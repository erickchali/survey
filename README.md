![Wello Logo](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbBp_1aK6dvGmqNwJdwgbUCzUCMWLh655XMw&usqp=CAU)

# Wello Cloud Service

[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)

## Before running this project

> A unix based environment is recommended to enhance development compatibility.

> The project is based in [NestJS Framework](https://docs.nestjs.com/)

### Install the following global libraries/utilities

- [NodeJS (nvm)](https://github.com/nvm-sh/nvm)
- [Yarn](https://yarnpkg.com/getting-started/install)
- [NestJS CLI](https://docs.nestjs.com/cli/overview)

## Makefile

A Makefile is included in the project with alias commands to wrap yarn/npm/docker commands, is not mandatory to use it, but you may find that some commands such as `launch-local` are a better option instead of typing the long docker command.

## Contributing Guide

[Commitizen](https://github.com/commitizen/cz-cli) library is included in the project, the purpose is to have one and only one way to make commits, following [conventional commits standard](https://www.conventionalcommits.org/en/v1.0.0/).
A script has been added to the `package.json` file, to create a commit using the convention just type `yarn commit`, and follow the instructions.

![How to make commits](https://commitizen-tools.github.io/commitizen/images/demo.gif)

## Local Development

A dockerized version of the application is included for local development which includes: a local instance of the application, a postgres database, a dynamodb database, a dynamo db admin.
Check docker-compose file inside `deployment` directory to modify or learn more about the services.

To run the local environment data just run

```shell
make launch-local
```
