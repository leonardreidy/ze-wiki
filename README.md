# README

Description: Demo project for locally hosting Wiki (WikiJS)

## Getting started

The convenience scripts in the dependency manifest (`package.json`) greatly simplify the install of the software by combining the best features of `devcontainers`, `docker compose` and `gnu make`. 

In order to get started you only need to run:

```yarn build```

This will execute three scripts: 

* prebuild
* build
* postbuild

The actions performed in each script are delegated to the GNU make utility and the substance of those actions is defined in the project `Makefile`.

In brief, the actions are as follows:

prebuild

* Remove node modules
* Install dependencies

build

* Run Docker Compose to build the database and application containers

postbuild

* Sleep for 5 seconds
* Open the browser and navigate to `http://localhost:3097`

## Installing WikiJS

Once the postbuild actions are complete and you have navigated to the browser you will be able to install WikiJS. Follow the onscreen prompts from here.

## Troubleshooting

If the page is empty or you are looking at a 404, try refreshing the page before restarting the service. I haven't fine tuned the wait time yet.

