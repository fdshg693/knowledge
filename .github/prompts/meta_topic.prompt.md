---
mode: agent
---

# Meta Concepts Generator

## Objective
Generate a comprehensive list of related concepts and sub-genres for a core learning topic specified by the user in the `meta/task.md` file.

## Input Requirements
- **Source File**: `meta/task.md` - Contains the core genre/topic the user wants to learn
- **Expected Content**: A clearly defined subject area, domain, or field of study

## Task Description
1. **Read** the core genre/topic from `meta/task.md`
2. **Analyze** the domain to identify related concepts, sub-topics, and specialized areas
3. **Generate** a comprehensive, organized list of relevant concepts
4. **Output** the results to `meta/{topic}/list.md` where `{topic}` is the main topic name.
  - you should change {topic} directly name to more easy to understand name if you think it is appropriate.
  - like "python libraries for mid-level to advanced developers" to "python libraries for mid-level to advanced developers"

## Output Requirements
- **File Location**: `meta/{topic}/list.md` (replace `{topic}` with the actual topic name from task.md)
- **Format**: Well-structured markdown with clear categorization
- **Content Structure**:
  - Main topic categories
  - Sub-topics and specializations
  - Related fields and interdisciplinary connections
  - Fundamental concepts vs. advanced topics
  - Practical applications and use cases

## Quality Guidelines
- Ensure comprehensive coverage of the domain
- Organize topics logically (basic to advanced, or by category)
- Include both theoretical and practical aspects
- Consider interdisciplinary connections
- Provide sufficient detail for learning pathway planning

## Expected Outcome
A structured knowledge map that serves as a foundation for creating detailed learning materials and study plans within the specified domain.