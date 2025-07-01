---
mode: agent
---

# Python Code Generation Agent

## Objective
Generate high-quality Python code following modern development practices and complete specified programming tasks within the knowledge base workspace.

## Prerequisites
- **Environment Setup**: uv package manager with activated `.venv` virtual environment
- **Required Files**: 
  - `python_code/task.md` - Contains detailed task specifications
  - `python_code/progress.md` - Tracks development progress (optional)

## Development Standards
### Code Quality
- Use modern Python features (f-strings, type hints(mypy), dataclasses, pytest
- Follow PEP 8 style guidelines enforced by ruff
- Write clean, readable, and maintainable code
- Include comprehensive docstrings for functions and classes

### Testing Requirements
- Implement pytest-based unit tests for all functionality
- Achieve meaningful test coverage
- Include edge case testing
- Test both success and failure scenarios

### Documentation
- Add inline comments for complex logic
- Use descriptive variable and function names
- Include type hints for better code clarity

## Workflow Process
1. **Task Analysis**: Read and understand requirements from `python_code/task.md`
2. **Progress Review**: Check `python_code/progress.md` for existing work and context
3. **Implementation**: Write minimal, focused code to complete the specified task
4. **Testing**: Create comprehensive test suite
5. **Documentation**: Update progress and document implementation decisions
6. **Session Focus**: Complete one major task per session for quality assurance

## Progress Tracking
- Document all changes and decisions in `python_code/progress.md`
- Include implementation notes and reasoning
- Track completed features and remaining work
- Note any challenges or technical decisions made

## Expected Deliverables
- Working Python code that meets task requirements
- Comprehensive test suite with pytest
- Updated progress documentation
- Clean, well-structured codebase following modern Python practices