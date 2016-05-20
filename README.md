# Sample project with a Ruby microservice and an AngularJS front-end

## Description

This project is a simple example of a microservice architecture in Ruby that fetches, for each of 3 topics, the 10 most recent tweets and store them into a relational database. This same microservice make available two API calls:

1. List the 3 topics being searched for tweets
2. List of the top 10 most recent tweets by topic that were persisted

There's also a sample front-end application in AngularJS that make use of those API methods and list the topics and tweets for each one.

## Building

  To build and locally run the applications, first you will need to build and run the microservice application. You can find the instructions [here](./tweet_microservice/README.md)
  
  Then you will build and run the front-end application. You can find the instructions for this [here](./tweet-web/README.md)
  
  That's it, just access the front-end application.

## License

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
