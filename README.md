# dbt Analytics Engineering

Tinitiate AI Solutions course materials, organized as a sequence of focused topics.

## Downloads and Installation

- **[Official dbt installation guide](https://docs.getdbt.com/docs/local/install-dbt)**
- **[Download Python](https://www.python.org/downloads/)** — required for the dbt Core workflow used in this course.
- **[Download Git](https://git-scm.com/downloads/)** — used to download and version-control projects.
- **[Download VS Code](https://code.visualstudio.com/download)** — recommended editor for SQL and YAML.

Install dbt Core with the Snowflake adapter:

```powershell
python -m pip install dbt-snowflake
dbt --version
```

`dbt-snowflake` automatically installs a compatible version of `dbt-core`.

## Course Contents

- **[Introduction: dbt Core vs dbt Cloud](introduction.md)** — An overview of dbt's open-source and managed options.
- **[Hands-On: Build Your First dbt Project](00_hands_on_dbt_practical.md)** — Download and install dbt, then follow a visual Snowflake project line by line through models, tests, documentation, and lineage.

1. **[Analytics Engineering](01_analytics_engineering.md)** — Learn the role, responsibilities, and value of analytics engineers.
2. **[Modern Data Stack](02_modern_data_stack.md)** — Understand the tools and layers used in modern data platforms.
3. **[What is dbt?](03_what_is_dbt.md)** — Discover what dbt does and where it fits in the data workflow.
4. **[Problems dbt Solves](04_problems_dbt_solves.md)** — Explore how dbt improves quality, documentation, reuse, and collaboration.
5. **[ETL vs. ELT](05_etl_vs_elt.md)** — Compare the two approaches and understand dbt's role in ELT.
6. **[dbt Core vs. dbt Cloud](06_dbt_core_vs_dbt_cloud.md)** — Compare features, deployment, scheduling, governance, and cost.
7. **[Installing dbt](07_installing_dbt.md)** — Set up Python, dbt Core, the Snowflake adapter, VS Code, and Git.
8. **[dbt Project Structure](08_dbt_project_structure.md)** — Learn the purpose of models, macros, seeds, snapshots, tests, and project files.
9. **[profiles.yml](09_profiles_yml.md)** — Configure database connections, environments, targets, and credentials.
