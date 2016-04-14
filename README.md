[![Build Status](https://travis-ci.org/patsul12/JobSearch.svg?branch=master)](https://travis-ci.org/patsul12/JobSearch)[![Code Climate](https://codeclimate.com/github/patsul12/JobSearch/badges/gpa.svg)](https://codeclimate.com/github/patsul12/JobSearch)
# Job Search

Repo for: [Job Search Tracker](http://mighty-brushlands-85186.herokuapp.comave_and_open_pag)

An app designed to make it easier to keep your job search organized. Track applications, resumes, and cover letters easily.
Add interview post-mortems and generate reports relevant to improving your job search

## Basic Installation

for a basic installation of the app follow these steps

1. clone this repo `git clone http://github.com/patsul12/JobSearch`
2. change directory into the project
3. run `bundle install --without development test`
4. run `rake`
5. to start up the local server run `rails s`
6. navigate to [localhost:3000](http://localhost:3000 "link to localhost") to access the application

## Development

#### Requirements:
  Ruby/Rails
  Postgres
  PhantomJS is required to run the tests for this application.
  [Installing Phantom](http://phantomjs.org/download.html)

1. Clone this repo
2. `cd` into the project directory
3. `bundle install`
4. Make sure you have a running instance of Postgres
4. `rake db:setup`
5. `rails s`
to get the development server running

###Testing:
to run the entire test suite simply run `rspec`

in order to make testing faster this project is set up to run tests from zeus

to start the zeus server run `zeus start`
leave it running and it should keep the application running so it doesn't need to restart every time you run a test

####developers notes:
If you are a vim user i recommend following along with this post: [using-vim-to-drive-tdd](http://tmr08c.github.io/vim/2015/11/08/using-vim-to-drive-tdd.html)
in order to setup your environment for fast testing with zeus

#### Author: Patrick Sullivan

#### License: MIT

