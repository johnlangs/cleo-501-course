# README 
 
## Introduction 
 
Cleo Description 
 
## Requirements 
 
This code has been run and tested on: 
 
- Ruby - 3.1.2p20
- Rails - 7.2.1
- Ruby Gems - Listed in `Gemfile` 
- PostgreSQL - 13.3 
- Docker (Latest Container) 
 
 
## External Deps 
 
- Docker - Download latest version at https://www.docker.com/products/docker-desktop 
- Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli 
- Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git 
- GitHub Desktop (Not needed, but HELPFUL) at https://desktop.github.com/ 
 
## Installation 
 
Download this code repository by using git: 
 
`git clone https://github.com/FA21-CSCE431/project-sprint-3-zlp-interviewer.git` 
 or  
 `git clone https://github.com/FA21-CSCE431/project-final-code-zlp-interviewer/` 
 
## Tests 
 
An RSpec test suite is available and can be ran using: 
 
`rspec spec/` 
 
You can run all the test cases by running. This will run both the unit and integration tests. 
`rspec .` 
 
## Execute Code 
 
Run the following code in Powershell if using windows or the terminal using Linux/Mac 
 
`cd project-sprint-3-zlp-interviewer` 
 
`docker run --rm -it --volume "$(pwd):/rails_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest` 
 
 
Install the app 
 
`bundle install && rails webpacker:install && rails db:create && db:migrate` 
 
 
Run the app 
`rails server --binding:0.0.0.0` 
 
 
The application can be seen using a browser and navigating to http://localhost:3000/ 
 
 
## Environmental Variables/Files 
 
We have environment variables setup for Authentication. The tutorial can be found here: https://medium.com/craft-academy/encrypted-credentials-in-ruby-on-rails-9db1f36d8570 
 
The tutorial above will help you understand now we encrypted the admin page's username and password! 
 
 
## Deployment 
 
1. For this assignment you should work with your github repository environment_test that you created previously. It should contain the test_app that we built in lab 1 and 2. 
2. (Start your docker and work in your terminal) Make sure you have dev, test and main branches. However, since we’re not really going to develop any new features, we won’t be using the dev branch in the assignment. We’ll be using test and main branches. 
   First, use $ git status to see if your git is tracking the current dir. 
   If you haven’t created dev and test branches, please do it now. For example, commands to create a test branch with git: 
 
 
 
Note: 
$ git checkout -b <branch> will create and switch to the new branch 
$ git checkout <branch> will only switch to the branch 
You don’t need to create a new branch in Github in advance, because $ git push origin <branch> will do it for you if Github doesn’t have a corresponding branch. 
 
After you create all three branches, your Github should look like this: 
 
 
itch to the test branch. Command - $ git checkout test 
4. We want to run the migration on each deploy automatically. 
   Create a file named Procfile in the root dir with this line of code 
 
 
 
 
6. Save the changes and push it to origin/test 
   $ git add . 
   $ git commit -m “add Procfile and route” 
   $ git push origin test 
 
7. From the Heroku Dashboard 
   Click the New button in the top right of your app list and select Create new pipeline: 
 
 
 
Note: if there’s no app in a pipeline, the pipeline will disappear. Therefore we need to configure some apps as default. 
 
8. Enable Review Apps. Do NOT select any options for this assignment. Click “Enable Review Apps” right away. 
 
 
 click “Create”, Heroku will start deploying immediately. Every time you make changes to the test branch, it triggers automatic deployment. 
 
 
 
10. We also need to create an app for staging. 
 
 
 
11. Click on the stage-test-app-1. Click Deploy. Choose the main branch for Automatic Deploys. 
 
 
 
Great! You just created a pipeline ready for deployment! 
 
12. Let’s make a small change to our app to see how Heroku pipeline works. 
    You should remain in the test branch ($ git checkout test). You can be creative and change/add something that won’t break your app. For example, I add something into app/views/books/index.html.erb. 
    Then save the changes and push to the remote test branch. Commands are the same as step 6. 
    You’ll see that Heroku starts automatic deployment in the review app. After the deployment is done, open the app and see if it works. 
 
 
 
13. Next, go to the Github website. Create a pull request and merge the changes from test to main 
14. After the merge, you’ll see that Heroku is automatically deploying the staging app. 
 
 
 
15. When the staging app is ready, open the app and check if everything looks good. Then promote it to the production area. 
 
 
 
16. After your review app and production app are both deployed, take a screenshot of your pipeline interface. Include the screenshot and links to both apps in the submission report. 
 
 
## CI/CD 
 
CI/CD has been implemented in the GitHub Actions in the repo here -> https://github.com/PatelHarshank/ZLPInterviewer/actions 
 
## Support 
 
Support for the Cleo course scheduler will be given over the course of its development, ending during Decemebter 

