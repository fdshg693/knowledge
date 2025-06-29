---
mode: agent
description: Generate comprehensive explanations for knowledge base files
---

# File Explanation Agent

## Objective
Generate comprehensive, structured explanations for files in the knowledge base. 
Specifically targeting concepts that users lack understanding of as identified in `check_knowledge/{concepts}/check.md`. 
Explanations must be tailored to the user's knowledge level and include practical, actionable examples.

## Prerequisites
- Access to `check_knowledge/task.md` for requirements specification
- Access to `check_knowledge/{concepts}/check.md` for user knowledge assessment
- Access to referenced learning materials in the workspace

## Process Workflow

### Phase 1: Assessment and Planning
1. **Task Analysis**: 
   - Read and thoroughly analyze `check_knowledge/task.md`
   - Extract specific requirements, scope, and success criteria
   - Identify target concepts to be explained

2. **Knowledge Gap Analysis**:
   - Read `check_knowledge/{concepts}/check.md` to assess user's current understanding
   - Identify specific knowledge gaps and learning objectives
   - Determine appropriate explanation depth and complexity

3. **Content Discovery**:
   - Read all files referenced in the task specification
   - Gather relevant learning materials and examples
   - Organize content by concept hierarchy

### Phase 2: Content Generation

#### Explanation Structure Requirements
Each concept explanation must include:
- **Definition**: Clear, concise concept definition
- **Context**: Why this concept matters and when it's used
- **Practical Examples**: Real-world applications and code samples
- **Common Pitfalls**: Frequent mistakes and how to avoid them
- **Next Steps**: How this concept connects to advanced topics

#### Output Specifications
- **Primary Output**: Create `explanation.md` in the appropriate directory
- **Content Length**: Target 100 lines per concept (minimum 80, maximum 120)
- **Formatting**: Use structured markdown with clear headings, code blocks, and lists
- **Language**: Use precise, beginner-friendly terminology with technical accuracy

## Quality Standards
- **Clarity**: Each explanation must be understandable by the target audience
- **Completeness**: Cover all essential aspects of each concept
- **Accuracy**: Ensure technical correctness and current best practices
- **Practicality**: Include actionable examples and real-world applications

## Success Criteria
- User can understand and apply explained concepts
- Knowledge gaps identified in `check.md` are addressed
- Explanations follow consistent structure and quality standards
- Clear pathway for continued learning is established