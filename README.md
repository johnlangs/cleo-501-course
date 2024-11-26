# README
 
## Introduction
 
Cleo Description 
 
## Requirements
 
This code has been run and tested on: 
 
- Ruby - 3.1.2p20
- Python - 3.12
- Rails - 7.2.1
- Ruby Gems - Listed in `Gemfile` 
- Python Packages - Listed in `requirements.txt`
- PostgreSQL - 13.7
- Docker (Latest Container) 
 
 
## External Deps
 
- Docker - Download latest version at https://www.docker.com/products/docker-desktop 
- Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli 
- Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git 
 
## Installation
 
Download this code repository by using git: 
 
`git clone https://github.com/johnlangs/cleo-501-course` 
 
## Tests 
 
An RSpec test suite is available and can be ran using: 
 
`rspec spec/` 
 
You can run all the test cases by running. This will run both the unit and integration tests. 
`rspec .` 
 
## Execute Code
 
Run the following code in Powershell if using windows or the terminal using Linux/Mac 
 
`cd cleo-501-course`
 
`docker run --rm -it --volume "$(pwd):/rails_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 paulinewade/csce431:latest` 
 
 
Install the app 
 
`bundle install && rails webpacker:install && rails db:create && db:migrate` 
 
 
Run the app 
`rails server --binding:0.0.0.0` 
 
 
The application can be seen using a browser and navigating to http://localhost:3000/ 
 
 
## Environmental Variables/Files
 
Environment Variables when used for development are placed in the env/development.rb file
 
## Deployment
 
In order to deploy Cleo, use the following steps:

1. Clone the repo
2. Create a Heroku application using the Heroku CLI
   `heroku create cleo-<feature/deployment>`
3. Add the app deployment heroku repo to your local repo
   `heroku git:remote -a cleo-<feature/deployment>`
   `git remote rename heroku heroku-cleo-<feature/deployment>`
4. Configure the Config/Env vars for the application
   `heroku -a cleo-<feature/deployment> config:set VAR=VALUE`
5. Push the main branch of the local repo to the heroku app
   `git push heroku-cleo-<feature/deployment> main:main`
6. If needed for python seeding script, configure the buildpacks of the heroku application
   `heroku buildpacks:set heroku/python --index 1 -a cleo-<feature/deployment>`
 
## CI/CD
 
CI/CD piplines should be enabled by default on github when it detects the rails app.
In order to add more piplines for rspec, brakeman, rubocop, etc., follow this link
https://github.com/actions/setup-ruby
 
## Support
 
Support for the Cleo course scheduler will be given over the course of its development, ending during Decemebter 

