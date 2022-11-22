@echo off
if [%1]==[] goto missing_param

set msg=%1
mvnw.cmd clean compile liquibase:diff -Dchangelog-msg=%msg%

:missing_param
@echo Parameter missing
@echo Usage: liquibase-diff.cmd "changelog-msg"
exit /B 1