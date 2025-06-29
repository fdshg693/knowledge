# File Prompts Summary

## Overview
This document provides a comprehensive summary of all file-related prompt files in the `.github/prompts/` directory. These prompts are designed to enhance file documentation, assess knowledge gaps, and generate explanations for technical concepts within the knowledge base system.

## Prompt Files Summary

### File Summary and Documentation Agent
**File:** `file_summary.prompt.md`
**Purpose:** Analyze file content and generate comprehensive documentation by adding summary comments and evaluating filename appropriateness
**Key Instructions:** 
- Examine file structure, functions, classes, and overall purpose
- Create concise summary comments using appropriate syntax for different file types
- Evaluate current filename and suggest improvements if necessary
- Add documentation to enhance code readability
**Expected Output:** Enhanced file with summary comments at the top and filename recommendations with rationale if changes are needed

### Knowledge Check Generator
**File:** `file_check.prompt.md`
**Purpose:** Create comprehensive knowledge check files that help users assess their understanding of technical concepts from learning materials
**Key Instructions:**
- Analyze task requirements from `check_knowledge/task.md`
- Extract key concepts, design patterns, and best practices from referenced materials
- Generate 7-11 targeted questions per file testing understanding at different levels
- Use YES/NO self-assessment format
**Expected Output:** A `check.md` file with structured questions covering conceptual, practical, technical, and analytical aspects, plus a `next_steps.md` file if additional files are needed

### File Explanation Agent
**File:** `file_explain.prompt.md`
**Purpose:** Generate comprehensive, structured explanations for files in the knowledge base, targeting concepts users lack understanding of
**Key Instructions:**
- Analyze task requirements and user knowledge gaps from check files
- Create detailed explanations with definitions, context, practical examples, and common pitfalls
- Target 100 lines per concept (80-120 range)
- Use beginner-friendly but technically accurate language
**Expected Output:** An `explanation.md` file with structured concept explanations that address identified knowledge gaps

## Quick Reference
- **file_summary.prompt.md** - File documentation and summary comment generation
- **file_check.prompt.md** - Knowledge assessment question creation
- **file_explain.prompt.md** - Comprehensive concept explanation generation

## Cross-References and Relationships
These prompts work together in a learning workflow:
1. **file_check.prompt.md** identifies knowledge gaps through assessment questions
2. **file_explain.prompt.md** addresses those gaps with detailed explanations
3. **file_summary.prompt.md** enhances code documentation for better understanding

All prompts reference the `check_knowledge/task.md` file for requirements and work within the structured knowledge base system to provide comprehensive learning support.
