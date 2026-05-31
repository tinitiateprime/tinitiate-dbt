# Complete dbt Bootcamp - Zero to Hero

This repository supports a complete hands-on dbt learning path, from analytics engineering fundamentals to production deployment, CI workflows, orchestration, dbt Fusion, VS Code extensions, and a final capstone project.

The course is designed for students who want to learn how to build reliable, tested, documented, and production-ready data transformation projects using dbt and Snowflake.

## Course Goals

By the end of this course, students should be able to:

- Explain what dbt is and why it is used in the modern data stack
- Build a dbt project from scratch
- Connect dbt to Snowflake
- Create models, sources, seeds, snapshots, tests, macros, and documentation
- Use Jinja and packages to create reusable transformation logic
- Build and debug production-grade dbt workflows
- Use selectors, tags, variables, and environment-specific configurations
- Implement incremental models, microbatching, and model lifecycle practices
- Prepare dbt projects for Slim CI and GitHub Actions deployment
- Explore dbt Fusion and VS Code dbt development workflows
- Orchestrate dbt with Dagster
- Complete a capstone analytics engineering project

## Prerequisites

Students should have basic knowledge of:

- SQL
- Data warehouses
- Command line usage
- Git and GitHub
- YAML
- Python basics for later sections

## Technology Stack

| Technology | Purpose |
| --- | --- |
| dbt | Data transformation and analytics engineering |
| Snowflake | Cloud data warehouse |
| SQL | Data modeling and transformation |
| YAML | dbt configuration, tests, docs, and selectors |
| Jinja | Dynamic SQL and reusable logic |
| GitHub | Version control and CI/CD |
| GitHub Actions | Production deployment automation |
| Dagster | dbt orchestration |
| VS Code | Development environment |
| dbt Fusion | Modern dbt developer experience |

## Course Curriculum

### Section 1: Course Introduction

1. What is dbt and why should you use it?
2. How can you take the most out of this course?
3. Essential read me - Course resources

### Section 2: Building the First Version of Our Project

4. Use-case and input data model overview
5. Snowflake registration
6. Snowflake authentication types and key-pair authentication
7. Automatic Snowflake data import
8. Only for reference - Snowflake behind the scenes
9. dbt roles, users, and database tables overview
10. Installing dbt
11. dbt project setup
12. Say hello to our dbt project folder
13. Visual Studio Code extensions overview
14. Datasets and data flow overview

### Section 3: Models

15. Learning objectives - Models
16. Models overview
17. Theory: CTE - Common Table Expressions
18. Deprecation warning - a dbt bug
19. Creating our first model: Airbnb listings

### Section 4: Materializations

20. Learning objectives - Materializations
21. Materializations overview
22. Model dependencies and dbt's `ref` tag
23. Table type materialization and project-level materialization config
24. Incremental materialization
25. Incremental strategies
26. Ephemeral materialization

### Section 5: Seeds and Sources

27. Learning objectives - Seeds and Sources
28. Seeds and Sources overview
29. Seeds
30. Sources
31. Source freshness checks

### Section 6: Snapshots

32. Learning objectives - Snapshots
33. Snapshots overview
34. Create a snapshot
35. Snapshots - Assignment briefing

### Section 7: Tests

36. Learning objectives - Tests
37. Tests overview
38. Generic tests
39. Debugging dbt tests
40. Saving test failures to the data warehouse
41. Saving test failures into a custom database schema
42. Singular tests
43. Unit tests

### Section 8: Advanced Testing - Contracts and Custom Generic Tests

44. Data contracts
45. Custom generic tests
46. Custom tests with parameters
47. Setting the tests' severity: warning vs error
48. dbt constraints: test at insert time

### Section 9: Jinja, Macros and Packages

49. Jinja basics
50. dbt Fusion compatibility
51. Let's take Jinja for a drive
52. dbt-specific Jinja features
53. Create your own macros
54. Advanced Jinja
55. Advanced macros in action
56. Installing third-party packages

### Section 10: Documentation

57. Learning objectives - Documentation
58. Documentation overview
59. Writing and exploring basic documentation
60. Markdown-based docs, custom overview page, and assets
61. The lineage graph - Data Flow DAG


### Section 11: Analyses, Hooks and Exposures

62. Learning objectives - Analyses, hooks and exposures
63. Analyses
64. Hooks
65. Grants - Managing permissions in dbt the modern way
66. Snowflake authentication update
67. Username/password version - Setting up a BI dashboard in Snowflake and Preset
68. Keypair - Say hi to our BI tool, Preset
69. Keypair - Set up a BI dashboard with our final tables
70. Read me - Exposures naming convention changes in recent dbt releases
71. Exposures


### Section 12: dbt Hero

72. Welcome to Hero
73. Have your say in the course roadmap

### Section 13: Debugging Tests and Testing with dbt-expectations

74. A note on the dbt-expectations setup
75. Announcement for dbt 1.10+ users
76. Great Expectations overview
77. Comparing row counts between models
78. Looking for outliers in your data
79. Implementing test warnings for extreme items
80. Validating column types
81. Monitoring categorical variables in the source data
82. Debugging dbt tests and working with regular expressions

### Section 14: Debugging with Logging

83. Logging to the dbt log file
84. Logging to the screen
85. Disabling log messages


### Section 15: Debugging YAML, SQL, Models and General dbt Bugs

86. An overview of advanced dbt commands
87. Taking debugging commands to action
88. Speeding up development with `--empty` and sampling `--sample`
89. Using flags

### Section 16: Tags and Selectors

90. Tags
91. Model selection deep dive
92. YAML selectors

### Section 17: Python Models

93. Python models overview
94. Implementing a simple Python model
95. Advanced Python models

### Section 18: Using Variables

96. Working with Jinja variables
97. A note for Windows users using cmd
98. Working with dbt variables
99. Setting default values
100. Using date ranges to make incremental models production-ready


### Section 19: dbt in Production - Microbatching Incremental Models

101. Microbatching
102. Excluding models from full refresh

### Section 20: dbt in Production - Model Lifecycle

103. Model lifecycle introduction
104. Model versioning
105. Deploying and deprecating versions
106. Disabling models

### Section 21: dbt in Production - Preparing a Project for Slim CI

107. Slim CI introduction and learning objectives
108. Working with multiple targets
109. Using environment variables
110. Setting up environment variables for a production-ready profile
111. Custom schemas: separating production and development environments
112. Cleaning up development schemas
113. Retrying failed executions with `--retry`
114. Comparing production and development state
115. Using `--defer` for a production-ready developer experience

### Section 22: Implementing an End-to-End Slim-CI-Based Production System

116. Slim CI workflow overview
117. Integration and deployment using GitHub Actions
118. GitHub secrets - Storing credential-sensitive data
119. Production pipelines and artifacts
120. Creating and testing feature branches and integrating to production
121. Automated production deployment and development environment cleanup

### Section 23: dbt Fusion and the Official Visual Studio Code Extension

122. dbt Fusion - Introduction
123. Exploring the technical differences between dbt Fusion and dbt Core
124. dbt Fusion feature matrix
125. License changes
126. Instructions if you want to use our plug-and-play Codespace
127. dbt Fusion and the VS Code extension installation and walkthrough
128. dbt Fusion installation for production systems
129. Running dbt Core and dbt Fusion side by side
130. Upgrade your projects to Fusion and dbt 1.10+ using `dbt-autofix`
131. Building our project with Fusion
132. Official VS Code extension - Development workflow and execution
133. Official VS Code extension - Navigation and code intelligence features
134. Official VS Code extension - Project and column-level lineage
135. Upgrading Fusion with the dbtf system utility


### Section 24: Orchestrating dbt with Dagster

136. Overview of the popular dbt orchestration tools and how to choose the right tool
137. A note on installing Dagster
138. Creating a Dagster project and connecting it to our dbt project
139. Dagster dbt files and UI overview
140. Manage, orchestrate, and debug your dbt project with Dagster
141. A note on the advanced Dagster section
142. Advanced Dagster: Using partitions with incremental models

### Section 25: Capstone Project

143. Capstone project briefing


### Section 26: Alternative VS Code Extension - Power User for dbt Core

144. dbt Power User - Extension and Codespace introduction
145. dbt Power User overview
146. dbt Power User - Setup
147. Sign up for a free account
148. dbt Power User - Working with and fixing legacy code
149. dbt Power User - Review existing foundation
150. The prompt we use for AI model building
151. dbt Power User - Building models with AI
152. dbt Power User - Compiling and running models
153. dbt Power User - Use AI to generate documentation
154. dbt Power User - Creating data quality tests
155. dbt Power User - Project health check
156. dbt Power User - Recap
157. dbt Power User - What's next?

## Hands-On Project Flow

The course builds an Airbnb-style analytics engineering project through multiple dbt layers:

```text
Raw source data
  -> Source definitions
  -> Staging models
  -> Intermediate models
  -> Mart models
  -> Tests and documentation
  -> BI dashboard and exposures
  -> Production CI/CD workflow
```

## Core dbt Commands

```bash
dbt debug
dbt deps
dbt seed
dbt run
dbt test
dbt build
dbt snapshot
dbt docs generate
dbt docs serve
```

## Suggested Repository Structure

```text
project/
  models/
    staging/
    intermediate/
    marts/
  snapshots/
  macros/
  seeds/
  tests/
  analyses/
  docs/
  dbt_project.yml
  README.md
```

## Skills Gained

- Analytics engineering
- dbt project development
- SQL data modeling
- Snowflake integration
- Data quality testing
- Source freshness checks
- Snapshots and slowly changing dimensions
- Incremental model design
- Jinja and macro development
- Package management
- dbt documentation and lineage
- Debugging and logging
- Production deployment patterns
- Slim CI with GitHub Actions
- Dagster orchestration
- dbt Fusion and VS Code workflows

## Career Paths

This course is useful for students preparing for roles such as:

- Analytics Engineer
- Data Engineer
- dbt Developer
- Snowflake Developer
- BI Engineer
- Data Platform Engineer
- Cloud Data Engineer

## References

- dbt Documentation: https://docs.getdbt.com/
- dbt Package Hub: https://hub.getdbt.com/
- Snowflake Documentation: https://docs.snowflake.com/
- Dagster Documentation: https://docs.dagster.io/
- GitHub Actions Documentation: https://docs.github.com/actions
