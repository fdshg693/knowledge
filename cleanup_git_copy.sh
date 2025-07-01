#!/bin/zsh

# git-copyフォルダの配下をすべて削除するスクリプト

# 現在のディレクトリのパスを取得
CURRENT_DIR=$(pwd)
GIT_COPY_DIR="${CURRENT_DIR}/git-copy"
LOGS_DIR="${CURRENT_DIR}/logs"

# logsフォルダが存在しない場合は作成
if [ ! -d "${LOGS_DIR}" ]; then
    mkdir -p "${LOGS_DIR}"
fi

# ログファイル名（タイムスタンプ付き）
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
LOG_FILE="${LOGS_DIR}/cleanup_git_copy_${TIMESTAMP}.log"

# ログ出力関数
log_message() {
    local message="$1"
    echo "$message" | tee -a "${LOG_FILE}"
}

# スクリプト開始ログ
log_message "=== Git-Copy クリーンアップスクリプト実行開始 ==="
log_message "実行日時: $(date)"
log_message "実行ディレクトリ: ${CURRENT_DIR}"

log_message "現在のディレクトリ: ${CURRENT_DIR}"

# ディレクトリパスの検証：~/CodeStudy/knowledge または ~/CodeStudy/knowledge{数字} パターンかチェック
# パターン: /Users/{ユーザー名}/CodeStudy/knowledge または /Users/{ユーザー名}/CodeStudy/knowledge{数字}
if [[ ! "${CURRENT_DIR}" =~ ^/Users/[^/]+/CodeStudy/knowledge([0-9]+)?$ ]]; then
    log_message "❌ このスクリプトは ~/CodeStudy/knowledge または ~/CodeStudy/knowledge{数字} ディレクトリでのみ実行できます。"
    log_message "現在のディレクトリ: ${CURRENT_DIR}"
    log_message "期待されるパターン: ~/CodeStudy/knowledge または ~/CodeStudy/knowledge{数字}"
    exit 1
fi

log_message "✅ ディレクトリパスが正しいことを確認しました。"

# git-copyフォルダが存在するかチェック
if [ -d "${GIT_COPY_DIR}" ]; then
    log_message "git-copyフォルダが見つかりました: ${GIT_COPY_DIR}"
    
    # git-copyフォルダ内のコンテンツを確認
    log_message "削除対象のファイル・フォルダ:"
    ls -la "${GIT_COPY_DIR}" | tee -a "${LOG_FILE}"
    
    # 確認プロンプト
    echo ""
    read "response?git-copyフォルダ内のすべてのファイル・フォルダを削除しますか？ (y/N): "
    log_message "ユーザー応答: ${response}"
    
    if [[ "${response}" =~ ^[Yy]$ ]]; then
        log_message "削除を実行しています..."
        
        # git-copyフォルダ内のすべてを削除（ファイル・フォルダ・隠しファイルも含む）
        # 通常のファイル・フォルダを削除
        if [ -n "$(ls -A "${GIT_COPY_DIR}" 2>/dev/null | grep -v '^\.$\|^\.\.$')" ]; then
            rm -rf "${GIT_COPY_DIR}"/*
        fi
        
        # 隠しファイル・隠しフォルダを削除（.と..は除外）
        if [ -n "$(ls -A "${GIT_COPY_DIR}" 2>/dev/null | grep '^\.' | grep -v '^\.$\|^\.\.$')" ]; then
            rm -rf "${GIT_COPY_DIR}"/.[!.]* "${GIT_COPY_DIR}"/..?*
        fi
        
        # 削除後の状態を確認
        if [ -z "$(ls -A "${GIT_COPY_DIR}" 2>/dev/null)" ]; then
            log_message "✅ git-copyフォルダ内のすべてのファイル・フォルダが削除されました。"
        else
            log_message "⚠️  一部のファイルが削除されていない可能性があります:"
            ls -la "${GIT_COPY_DIR}" | tee -a "${LOG_FILE}"
        fi
    else
        log_message "❌ 削除がキャンセルされました。"
    fi
else
    log_message "❌ git-copyフォルダが見つかりません: ${GIT_COPY_DIR}"
    log_message "利用可能なフォルダ:"
    ls -la "${CURRENT_DIR}" | grep "^d" | tee -a "${LOG_FILE}"
fi

# スクリプト終了ログ
log_message "=== Git-Copy クリーンアップスクリプト実行終了 ==="
log_message "ログファイル: ${LOG_FILE}"
