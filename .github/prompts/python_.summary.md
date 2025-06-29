# Python Prompts Summary

## Overview
This document provides a comprehensive summary of all Python-related prompt files in the knowledge base. These prompts serve as specialized agents for various Python development tasks including learning, code review, refactoring, and modernization. Each prompt is designed to assist developers at different stages of their Python journey.

## Prompt Files Summary

### Python Concept Educator Agent
**File:** `python_learn.prompt.md`
**Purpose:** Provide comprehensive, clear explanations of Python concepts tailored for mid-level developers
**Key Instructions:** 
- Analyze concepts from `python_learn/concepts.md`
- Create educational content with practical examples
- Generate executable code snippets with real-world applications
- Organize content in structured documentation format
- Maximum 3 files per execution run with progressive development approach
**Expected Output:** 
- Documentation in `python_learn/{concept_name}/output/*.md`
- Practical code examples in `python_learn/{concept_name}/examples/*.py`
- Well-commented, executable code snippets (100-200 lines max)

### Python Code Review Agent
**File:** `python_review.prompt.md`
**Purpose:** Conduct comprehensive code reviews to identify improvements and enhance code quality
**Key Instructions:**
- Systematic analysis across multiple dimensions (quality, readability, performance, security, maintainability)
- Prioritize both immediate improvements and long-term maintainability
- Consider breaking changes when they provide significant benefits
- Use severity classification (Critical, High, Medium, Low)
- Provide actionable recommendations with specific examples
**Expected Output:**
- Comprehensive review document: `review/review_{original_filename}.md`
- Executive summary with key findings
- Detailed analysis by review criteria
- Priority recommendations with before/after code examples
- Implementation roadmap and additional resources

### Python Modernization Agent
**File:** `python_modernize.prompt.md`
**Purpose:** Modernize Python code using current best practices and Python 3.13+ features
**Key Instructions:**
- Follow PEP 8 style guidelines
- Implement modern Python features (type hints, f-strings, pathlib)
- Use development tools (mypy, black, pytest)
- Remove deprecated libraries and methods
- Ensure clean, readable, and maintainable code
**Expected Output:**
- Modernized code with type annotations
- f-string formatting throughout
- pathlib for file system operations
- Black-formatted, mypy-validated code

### Python Refactoring Agent (Rename)
**File:** `python_rename.prompt.md`
**Purpose:** Refactor Python code to use more descriptive names following PEP 8 conventions
**Key Instructions:**
- Use snake_case for functions and variables
- Use PascalCase for class names
- Use UPPER_SNAKE_CASE for constants
- Apply descriptive naming that indicates purpose
- Avoid abbreviations unless well-established
- Update related documentation when renaming
**Expected Output:**
- Refactored code with improved naming conventions
- Suggested new filenames if needed
- Consistent naming patterns throughout codebase
- Updated documentation and comments

## Quick Reference

### Python Prompt Files by Purpose
- **Learning & Education**: `python_learn.prompt.md` - Educational content creation for Python concepts
- **Code Quality**: `python_review.prompt.md` - Comprehensive code review and improvement suggestions  
- **Modernization**: `python_modernize.prompt.md` - Update code to modern Python standards
- **Refactoring**: `python_rename.prompt.md` - Improve code readability through better naming

### Cross-References and Relationships
- **python_learn** and **python_review** complement each other - learning followed by code review
- **python_modernize** and **python_rename** work together for comprehensive code improvement
- **python_review** can identify areas where **python_modernize** and **python_rename** should be applied
- All prompts support the overall goal of improving Python code quality and developer understanding

### Development Workflow Integration
1. **Learning Phase**: Use `python_learn` to understand concepts
2. **Implementation Phase**: Write code using learned concepts  
3. **Review Phase**: Apply `python_review` to identify improvements
4. **Refinement Phase**: Use `python_modernize` and `python_rename` for code enhancement
5. **Iteration**: Repeat cycle for continuous improvement

### Target Audiences
- **Mid-level developers** (python_learn, python_review)
- **Legacy code maintainers** (python_modernize, python_rename)
- **Code reviewers and team leads** (python_review)
- **Python learners seeking practical examples** (python_learn)