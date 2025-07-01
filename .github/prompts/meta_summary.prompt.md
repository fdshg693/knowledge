---
mode: agent
---

# Prompts Meta Summary Generator

## Objective
Search for all {concepts}-related prompt files in the `.github/prompts/` directory (all files matching the pattern `.github/prompts/{concepts}_*.md`)
Create a comprehensive summary document that consolidates their content for easy reference and overview.

## Instructions

### 1. File Discovery
- Look at `meta/task.md` file for the {concepts} variable
- Search for all files matching the pattern `.github/prompts/{concepts}_*.md`
- Exclude the current meta summary prompt file from analysis
- Include all variations of {concepts}-related prompt files (e.g., `{concepts}_learn.prompt.md`, `{concepts}_concepts.prompt.md`, etc.)

### 2. Content Analysis
- Read and analyze the content of each discovered {concepts} prompt file
- Extract key information including:
  - Prompt purpose and objectives
  - Main instructions and guidelines
  - Expected outputs or deliverables
  - Any special requirements or constraints

### 3. Summary Generation
- Create concise but comprehensive summaries for each prompt file
- Organize content in a logical, hierarchical structure
- Maintain the essential meaning and intent of each original prompt

### 4. Output Format
Generate a single markdown file named `.github/prompts/{concepts}_.summary.md` with the following structure:

```markdown
# {concepts} Prompts Summary

## Overview
Brief description of the document's purpose and scope.

## Prompt Files Summary

### [Prompt File Name 1]
**File:** `filename.prompt.md`
**Purpose:** Brief description of the prompt's main objective
**Key Instructions:** Summary of main instructions and guidelines
**Expected Output:** Description of expected deliverables

### [Prompt File Name 2]
...continue for each file...

## Quick Reference
- List of all {concepts} prompt files with their primary purposes
- Cross-references and relationships between prompts if applicable
```

## Expected Outcome
A well-organized summary document that serves as a meta-index for all {concepts}-related prompts, 
enabling quick understanding of available {concepts} learning and analysis tools within the knowledge base.