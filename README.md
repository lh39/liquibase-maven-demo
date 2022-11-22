# liquibase-maven-demo

This repository demonstrates the usage of
the [liquibase-maven-plugin](https://docs.liquibase.com/tools-integrations/maven/home.html) in combination with spring
boot to automate the generation of database changelogs and their automated execution.

In concrete, it shows:

- generation of changelogs
- execution of changelogs on application startup

The process works by scanning all packages defined in [pom.xml](pom.xml), in this example "de.lh39", for entity classes.
It then goes on to compare those definitions against the defined database connection
in [liquibase.properties](src/main/resources/application.properties).
The differences are generated into a new changelog file.

## Important configurations

- [pom.xml](pom.xml) - defines package scanning for liquibase-maven-plugin
- [liquibase.properties](src/main/resources/liquibase.properties) - defines datababase connection for liquibase
  changelog generation
- [application.properties](src/main/resources/application.properties) - defines liquibase behaviour on application
  startup

## Prerequisites

Start up the database to generate changelogs against or to apply migrations on.
> docker-compose up -d

## Run application

Run the spring boot application (automatically applies all existing migration changesets)
> ./mvnw spring-boot:run

## Generate new changelogs

darwin / unix:
> ./liquibase-diff.sh CHANGELOG_NAME (e.g. "initial")

win:
> liquibase-diff.cmd CHANGELOG_NAME (e.g. "initial")