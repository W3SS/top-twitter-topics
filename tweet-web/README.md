# Tweet Front-End
# Front-end application in AngularJS that consumes a API to see the 10 latest twitter of 3 different topics

## Description

This is a front-end application in AngularJS that makes use of a API to list some topics and tweets for each one.
This project was generated with [yo angular generator](https://github.com/yeoman/generator-angular) version 0.15.1. It uses the following stack:

* [Bootstrap](https://getbootstrap.com): it's a HTML, CSS, and JS framework for developing responsive, mobile first projects on the web. It's used to build the interface.
* [Bower](http://bower.io/): it's a package manager for the web. It's used to manage the project's dependencies, similar to maven in java or bundler in ruby.
* [Grunt](http://gruntjs.com/): it's a javascript task runner. It's used to generate builds, execute tests, compress/minify assets, CDNfy the static resources and so on.
* [Font Awesome](http://fontawesome.io/): it's a toolkit to work with icons and CSS. It's used basically show the LinkedIn and GitHub icons.

## Pre-Requisites

Before building, you will need to have installed in your machine the following tools:

* node - 4.4.4+
* npm - 2.15.1+
* bower - 1.7.9+
* grunt - 1.2.0+

## Building

  To build and run the application, first clone this repo in your machine:
  
  ```
  git clone https://github.com/andersonfarias/top-twitter-topics.git
  ```
  
  Open the terminal and go to the front-end application folder
  
  ```
  cd path_to_donwloaded_repo/tweet-web
  ```
  
  Execute the following commands to install required libraries:
  
  ```
  npm install
  bower install
  ```
  
  Run `grunt` for building and `grunt serve` for run.
  
## Testing

Running `grunt test` will run the unit tests with karma.

## License

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
