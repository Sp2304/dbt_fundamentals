# DBT FUNDAMENTALS:
## Day 1

- **Commands and Concepts:**
  - `dbt seed`: Creates tables in the warehouse based on files.
  - Analyses: Project SQL.
  - Materialized: `table`, `view`, `incremental(table)`, `ephemeral`.
  - `dbt debug`.
  - `dbt compile`: Creates a folder called `target`.
  - `dbt build`: Generates a JSON file.
  - `schema.yml`: Addresses not null errors.
  - Filter condition in incremental model.
  - Jinja commenting: `{#  #}`.
  - `dbt test`: Executes defined test models.
  - Inside double quotes and in Jinja called doc code.

- **Status:**
  - Completed till `dbt test`.
  - One YAML and MD file for staging is pending.

## Day 2

- **Commands and Concepts:**
  - `dbt build -s`: Builds both models.
  - `dbt test`: After uploading MD and YAML files.
  - `dbt source freshness`: Checks for new data updates and test pass criteria.
    - Warning with 12 hours.
    - Error with 24 hours if data is not added or updated (stale data).
  - Source freshness: Checks whether the data is fresh or not.
    - Explanation: Source freshness is about how up-to-date your data is.
    - Regular updates and checks ensure that your analysis is based on the latest information.

- **Additional Topics:**
  - Materialization, manifest.
  - `skip_on_failure`: Skips dependent models if a model fails.
  - Naming conventions: `source(src)`, `staging(stg)`, `intermediate(int)`.
  - Fact and dimension modeling.
  - SCD: `type0`, `1`, `2`, `3`, `4`, `6` (`type(1+2+3)`).

- **Pending:**
  - DBT snapshot implementation.
  - Project variables: Data input hierarchy (cmdline, env variable, project.yml).
  - Jinja practical demonstration (to be done online).

## Day 3

- **Topics Covered:**
  - Surrogate key.
  - `dbt docs serve`: Localhost server for documentation.
  - `dbt build -s stg_orders`.
  - `dbt -s incre_test --full-refresh`.
  - `dbt deps`.
  - Inserting new files in the test folder and checking `dbt test`.
  - `dbt docs generate`: Creates a catalog.json, comes with the data warehouse.
  - Exclude command for `dbt build`, `seed`.
  - Synchronize: Append the column or.
  - `dbt docs generate`.
  - `dbt docs serve`: Opens localhost:8080.
  - `on-run-start`: Before any command execution.
  - `on-run-end`: After completion of the command process.
  - `post-hook`: After model build, it'll work; same as pre-hook with respect to `on-run-start`.

## Day 5

- **DBT Cloud:**
  - `dbt docs generate`.
  - `dbt source freshness`.
  - Don't pull from main; do it manually and sync with the Git repo.
  - Creating jobs for automating processes.
  - For `dbt run`, `dbt docs generate`, `dbt source freshness`, and `dbt build -s state:modeified+` (building modified models and also the models connected with the modified models).
  - For more details, check [DBT Cloud Deployment Details](https://cloud.getdbt.com/deploy/227379/projects/325758/environments/270607).

- **Selective Building:**
  - The `dbt build --select state:modified+` command is used to selectively build dbt models based on their state, specifically targeting models that have been modified or added.

### Additional Notes:

- [Slim CI in DBT](https://www.vantage-ai.com/blog/how-to-use-slim-ci-with-dbt-core).
- [More about Materialization](https://docs.getdbt.com/docs/build/materializations).

## Interview:

- **Questions Covered:**
  - Introduce yourself.
  - Mapping document takes 1 week, generating unit test.
  - Model is there, but no mapping document, then 1 week.
  - Validation is required.
  - DBT Jinja, macro Jinja.
