---
mode: agent
---

# Python Code Refinement Instructions

## Objective
Conduct a comprehensive refinement of Python code files to enhance quality, readability, maintainability, and adherence to best practices. The goal is to transform existing code into production-ready, well-structured, and maintainable Python code.

## Scope and Input
- Analyze Python code files provided in the current workspace context
- Focus on the specific files mentioned or currently open in the editor
- Consider the broader project structure and dependencies when making changes

## Refinement Criteria

### Code Quality Improvements
1. **Code Structure**: Organize code with proper class and function organization
2. **Naming Conventions**: Apply PEP 8 naming standards for variables, functions, and classes
3. **Documentation**: Add comprehensive docstrings and inline comments
4. **Type Hints**: Include proper type annotations for better code clarity
5. **Error Handling**: Implement robust exception handling and validation
6. **Performance**: Optimize code for better performance where applicable

### Maintainability Enhancements
1. **Modularity**: Split large files into logical modules when beneficial
2. **Reusability**: Extract common functionality into reusable components
3. **Dependencies**: Properly manage imports and external dependencies
4. **Configuration**: Separate configuration from business logic

## Refinement Process

### 1. Initial Analysis
- Review the current code structure and identify improvement areas
- Check for existing review files (`review/review_{file_name}.md`) and use them as guidance
- Understand the code's purpose and current functionality

### 2. Implementation Strategy
- Apply refactoring incrementally to maintain code functionality
- Prioritize high-impact improvements first
- Ensure all changes maintain backward compatibility unless explicitly required otherwise
- Create additional files when splitting improves organization

### 3. Quality Assurance
- Validate that refactored code maintains original functionality
- Ensure proper import statements and dependencies
- Verify code follows Python best practices and PEP 8 guidelines

## Output Requirements

### File Organization
- Create new files with descriptive names when splitting code
- Maintain logical directory structure
- Update import statements appropriately

### Documentation
- Include comprehensive docstrings for all functions and classes
- Add inline comments for complex logic
- Update or create README files if necessary

## Completion Criteria

### When to Stop Refinement
Stop the refinement process when:
1. **Significant improvements achieved**: Code quality, readability, and maintainability have been substantially enhanced
2. **All review items addressed**: If a review file exists, all identified issues have been resolved
3. **Best practices implemented**: Code follows Python conventions and industry standards
4. **Modular structure achieved**: Code is properly organized and maintainable

### Final Steps
Upon completion:
1. **Create summary documentation**: Generate a `refine/next_step.md` file containing:
   - Summary of changes made
   - Remaining improvement opportunities
   - Recommended next steps for further enhancement
   - Any technical debt or areas requiring future attention

2. **Validate functionality**: Ensure all refactored code maintains expected behavior

## Expected Outcomes
- Clean, readable, and maintainable Python code
- Proper code organization and structure
- Comprehensive documentation and type hints
- Adherence to Python best practices and PEP 8
- Clear separation of concerns and modular design