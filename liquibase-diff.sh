#/bin/bash
if [ -z "$1" ]
  then
    echo "Parameter missing"
    echo "Usage: liquibase-diff.sh 'changelog-msg'"
    exit 1
fi
./mvnw clean compile liquibase:diff -Dchangelog-msg=$1
