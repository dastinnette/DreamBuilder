# Dream Builder (Kickstarter clone)
## Built with Ruby on Rails

### Authors
[Steven Olson](http://github.com/SteveOscar), [James Crockett](https://github.com/jecrockett), [David Stinnette](https://github.com/dastinnette)

This project was created as a part of the curriculum for the [Turing School of Software & Design](http://turing.io) to complete the "Pivot" project.

The original version of this project, from which this version was pivoted, can be found at: [https://github.com/SteveOscar/little-shop-private-stache](https://github.com/SteveOscar/little-shop-private-stache)

### Overview

This multi-tenancy Rails application is a fundraising site modeled after Kickstarter. Users can browse and contribute to campaigns, or sign up to create and manage their own campaigns. 

### Live Version

You can find a live version of this application on Heroku at: [http://dreambuilder.herokuapp.com/](http://dreambuilder.herokuapp.com/)

### Setup

To set up a local copy of this project, perform the following:

  1. Clone the repository: `https://github.com/dastinnette/DreamBuilder`
  2. `cd` into the project's directory
  3. Run `bundle install`
  4. Run `rake db:create db:migrate db:seed` to set up the postgres database and seed it with users, causes, and donations.
    - The seed includes the setup for a platform administrator. To login as a platform admin, use these credentials - email: jorge@turing.io, password: password.
  5. Run the application in the dev environment by running `rails s`

### App Features

The app is designed for both the mobile and desktop experience. Some of the main features of the app include:

#### Causes

Causes are the fundraising campaigns created by users. When a guest visits a cause, they can view how many supporters the cause has, total donations, and cause info. A pie chart tracks the total progress. All cause supporters's profiles are linked to the cause. All new causes must first be approved by a platform admin before they become public.

#### Users (cause admins)

Users must sign up to create or donate to a cause. Users can sign up with their own credentials or through twitter Oauth. Once a user creates a cause, he/she can add other users as cause admins. User profiles are public and list all causes that a user manages, and all donations that they have made to other causes. Users can delete their own causes.

#### Platform Admins

Admins are the 'master user' of the site. A platform admin is the only user who can approve new causes to go active, and view pending causes. This is done via the platform admin dashboard, which also shows all recent donations and all registered users. Platform admins can also act as normal users to create and manage individual causes.

#### Other Features

The app uses the Twitter API gem to allow users to tweet their donations. The Chartkick gem is used to generate cause progress charts. Materialize pagination is used on the category show pages, and the gon gem/jQuery are used to show the number of active causes on the category index page.

### Test Suite

The test suite tests the application on multiple levels. To run all of the tests, run `rake test` from the terminal in the main directory of the project. The feature tests (integration tests) rely mainly on the [capybara gem](https://github.com/jnicklas/capybara) for navigating the various application views.

The project also utilizes the [simplecov gem](https://github.com/colszowka/simplecov) for quick statistics on code coverage.

### Dependencies

This application depends on many ruby gems, all of which are found in the `Gemfile` and can be installed by running `bundle install` from the terminal in the main directory of the project.
