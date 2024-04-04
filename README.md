# README

Description: Demo project for locally hosting Wiki on the same platform used by Wikipedia (MediaWiki)

## Getting started

The convenience scripts in 'package.json' greatly simplify the quirky install of the software by combining the best features of devcontainers, docker compose and `gnu make`. 

In order to get started you only need to run:

```yarn build```

This will remove `node_modules`, update the package dependencies, and spin up the containers. It will then navigate to the browser for you to perform the small number of manual steps that are required to complete the MediaWiki 1.41.1 intall. 

At this point, follow the onscreen instructions with the following provisos: 

* Set host to 'database' not 'localhost'
* Use `ze_user` as the username to perform the relevant steps
* Use `localdev` as the password for the `ze_user`

Once the manual steps are complete, you are invited to download the `LocalSettings.php` file which you must add to the root of the project directory. 

Finally, you will need to spin down the containers and update the docker-compose file to use the newly downloaded
`LocalSettings.php` file. 



