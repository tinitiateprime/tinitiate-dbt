![dbt Analytics Engineering](docs/images/dbt-workflow.png)

# dbt Analytics Engineering Tutorial

&copy; TINITIATE.COM

This repository provides a structured learning path for dbt Core, Snowflake, analytics engineering, project configuration, testing, documentation, and hands-on development.

## QUICK START

| Requirement | Official Link |
| --- | --- |
| dbt | [dbt installation guide](https://docs.getdbt.com/docs/local/install-dbt) |
| Python | [Download Python](https://www.python.org/downloads/) |
| Git | [Download Git](https://git-scm.com/downloads/) |
| VS Code | [Download VS Code](https://code.visualstudio.com/download) |

Install dbt Core with the Snowflake adapter:

```powershell
python -m pip install dbt-snowflake
dbt --version
```

Installing `dbt-snowflake` also installs a compatible version of `dbt-core`.

## CONTENTS

* ### [Introduction — dbt Core vs. dbt Cloud](./introduction.md)
    * What dbt Core is
    * What dbt Cloud is
    * Shared dbt concepts
    * Scheduling and development differences
    * Enterprise adoption considerations
    * Core vs. Cloud comparison

* ### Analytics Engineering Foundations
    * ### [Analytics Engineering](./01_analytics_engineering.md)
        * Evolution of data teams
        * Role of an analytics engineer
        * Data modeling and data quality
        * Documentation and lineage
        * Analytics engineer vs. data engineer
        * Real-world responsibilities
    * ### [Modern Data Stack](./02_modern_data_stack.md)
        * Source systems
        * Data ingestion
        * Cloud data warehouses
        * Transformation layer
        * Analytics and reporting
        * Where dbt fits
    * ### [What is dbt?](./03_what_is_dbt.md)
        * Why dbt was created
        * Models, sources, and tests
        * Documentation and lineage
        * Snapshots and macros
        * What dbt does and does not do
        * Typical dbt workflow
    * ### [Problems dbt Solves](./04_problems_dbt_solves.md)
        * SQL sprawl
        * Missing documentation
        * Data-quality problems
        * Dependency visibility
        * Duplicate business logic
        * Collaboration and version control
    * ### [ETL vs. ELT](./05_etl_vs_elt.md)
        * Extract, transform, and load
        * Extract, load, and transform
        * Traditional ETL architecture
        * Modern ELT architecture
        * Snowflake and cloud computing
        * dbt's role in ELT
    * ### [dbt Core vs. dbt Cloud](./06_dbt_core_vs_dbt_cloud.md)
        * Installation and development
        * Scheduling and orchestration
        * Monitoring and collaboration
        * Infrastructure ownership
        * Governance and enterprise features
        * Selection considerations

* ### dbt Setup and Configuration
    * ### [Installing dbt](./07_installing_dbt.md)
        * Python and pip
        * Virtual environments
        * Installing `dbt-snowflake`
        * VS Code and Git
        * Verification with `dbt --version`
        * Connection testing with `dbt debug`
    * ### [dbt Project Structure](./08_dbt_project_structure.md)
        * `dbt_project.yml`
        * Models and materializations
        * Staging, intermediate, and mart layers
        * Macros, seeds, and snapshots
        * Tests and analyses
        * Generated target and log folders
    * ### [profiles.yml](./09_profiles_yml.md)
        * Profile names
        * Targets and outputs
        * Snowflake connection properties
        * Development, QA, and production environments
        * Environment variables and security
        * Connection troubleshooting

* ### Hands-On Learning
    * ### [Build Your First dbt Project](./00_hands_on_dbt_practical.md)
        * Understand how dbt works
        * Download and install dbt Core
        * Prepare Snowflake
        * Configure `dbt_project.yml`
        * Configure `profiles.yml`
        * Load CSV seeds
        * Build staging models
        * Create model dependencies with `ref()`
        * Add and run data tests
        * Generate documentation and lineage

---

| &copy; TINITIATE.COM |
| --- |
