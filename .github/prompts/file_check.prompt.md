---
mode: agent
description: Generate knowledge check files from learning materials
---

# Knowledge Check Generator

## Objective
Create comprehensive knowledge check files that help users assess their understanding of technical concepts, patterns, and practices from learning materials.

## Process
1. **Task Analysis**: Read and analyze `check_knowledge/task.md` to understand the specific requirements and scope
2. **Content Discovery**: Read all files referenced in the task file to gather learning materials
3. **Concept Extraction**: Identify and extract key concepts, design patterns, best practices, and technical knowledge
4. **Assessment Creation**: Generate targeted questions that test understanding at different levels

## Output Requirements
- Create a `check.md` file in the appropriate directory
- Use clear, structured markdown formatting
- Include practical questions that test comprehension
- Provide a self-assessment format with YES/NO responses
- Focus on actionable knowledge and real-world application

## Question Types
- **Conceptual**: Understanding of core concepts and principles
- **Practical**: Application of knowledge in real scenarios
- **Technical**: Specific implementation details and patterns
- **Analytical**: Ability to explain "why" and "how" concepts work

## Question Number
- Aim for 7-11 questions per 1 file
- and create a `next_steps.md` file in the `check_knowledge/requirements/check/` directory with a summary of what to do next if you need more files.

## Template Structure
```markdown
## DO YOU KNOW?
1. [Conceptual Question]
   - YES / NO
2. [Practical Application Question]
   - YES / NO
3. [Technical Implementation Question]
   - YES / NO
```

## Quality Standards
- Questions should be specific
- Avoid vague or ambiguous language
- Focus on practical, applicable knowledge
- Ensure questions cover different difficulty levels
- Include both theoretical and practical aspects