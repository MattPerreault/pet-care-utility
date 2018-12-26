##### group2_fall2018

#### Ruby version 2.5.1

#### Database creation
Need to use postgres for production
May need to install posgresql on your machine as it does not come with the gem  
[Getting started with postgres](https://www.codementor.io/engineerapart/getting-started-with-postgresql-on-mac-osx-are8jcopb)

Make sure to name your database as petutility

*After setting up username and password in the terminal 
run 
```bash
    $'export POSTGRES_USERNAME='dev' 
    $'export POSTGRES_PASSWORD='password' 
```

update the database.yml to reflect these changes 
as such
username: <%= ENV['POSTGRES_USERNAME'] %>
password: <%= ENV['POSTGRES_PASSWORD'] %>

Update your bash_profile with these new environment variables so you do not need to set these 
parameters everytime you reboot your machine.

#### How to run the test suite
You will need to create a table named 'test' in postgres that is owned by Dev.
This test table will be the throw away table that is deleted after every test run.
All of our tests live in the test directory. Our integration tests live in test/integration
our model tests live in test/model and the same structure for controllers tests.
To run the tests you will need to be in the app root directory and from the terminal
run 
```bash 
    $ rake test 
```
Flog and saikuro are installed and can be run on any file by using
```bash
    $ flog FILE_YOU_WANT_TEST
```
which will output to the console,
or
```bash
    $ saikuro -c -p FILE_YOU_WANT_TO_TEST
```
and the output will be in the directory that contains the tested file.
#### Deployment instructions 
To run locally, move into the root directory and run 'bin/rails server' 
navigate to localhost:3000 in your browser.
