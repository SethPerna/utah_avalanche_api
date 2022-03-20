# Utah Avalanche API

![languages](https://img.shields.io/github/languages/top/SethPerna/utah_avalanche_api?color=red)
![PRs](https://img.shields.io/github/issues-pr-closed/SethPerna/utah_avalanche_api)
![rspec](https://img.shields.io/gem/v/rspec?color=blue&label=rspec)
![simplecov](https://img.shields.io/gem/v/simplecov?color=blue&label=simplecov) <!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/contributors-1-orange.svg?style=flat)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->


## Background and Description

Utah Avalanche API is a backend application to expose an API endpoint.The data exposed regards avalanche forecasts for a certain mountain ranges in Utah. A FE client could provide the mountain range to the API and get conditions for the day as well as get specific conditions according to slope and elevation. The end goal would be to set up SMS service to proivide all users or pass holders in the database with avalanche data every morning via email or SMS.


## Requirements and Setup (for Mac):

### Ruby and Rails
- Ruby Version 2.7.4
- Rails Version 5.2.6

### Gems Utilized
- RSpec 
- Pry
- SimpleCov
- Capybara
- Shoulda-Matchers 
- Factory_Bot_Rails
- Faker
- jsonapi-serialize
- Figaro
- Webmock
- VCR

## Setup
1. Clone this repository:
On your local machine open a terminal session and enter the following commands for SSH or HTTPS to clone the repositiory.


- using ssh key <br>
```shell
$ git clone git@github.com:SethPerna/utah_avalanche_api.git
```

- using https <br>
```shell
$ git clone https://github.com/SethPerna/utah_avalanche_api
```

Once cloned, you'll have a new local copy in the directory you ran the clone command in.

2. Change to the project directory:<br>
In terminal, use `$cd` to navigate to the backend Application project directory.

```shell
$ cd sweater-weather
```

3. Install required Gems utilizing Bundler: <br>
In terminal, use Bundler to install any missing Gems. If Bundler is not installed, first run the following command.

```shell
$ gem install bundler
```

If Bundler is already installed or after it has been installed, run the following command.

```shell
$ bundle install
```

There should be be verbose text diplayed of the installation process that looks similar to below. (this is not an actual copy of what will be output).

```shell
$ bundle install
Using rake 13.0.6
Using concurrent-ruby 1.1.9
Using i18n 1.9.1
Using minitest 5.15.0
Using thread_safe 0.3.6
Using tzinfo 1.2.9
Using activesupport 5.2.6
Using builder 3.2.4
Using erubi 1.10.0
Using mini_portile2 2.7.1
Using racc 1.6.0
Using nokogiri 1.13.1
Using rails-dom-testing 2.0.3
Using crass 1.0.6
Using loofah 2.13.0
Using rails-html-sanitizer 1.4.2
Using actionview 5.2.6
Using rack 2.2.3
Using rack-test 1.1.0
Using actionpack 5.2.6
Using nio4r 2.5.8
Using websocket-extensions 0.1.5
Using websocket-driver 0.7.5
Using actioncable 5.2.6
Using globalid 1.0.0
Using activejob 5.2.6
Using mini_mime 1.1.2
Using mail 2.7.1
Using actionmailer 5.2.6
Using activemodel 5.2.6
Using arel 9.0.0
Using activerecord 5.2.6
Using marcel 1.0.2
Using activestorage 5.2.6
Using msgpack 1.4.4
Using bootsnap 1.10.3
Using bundler 2.1.4
Using byebug 11.1.3
Using coderay 1.1.3
Using diff-lcs 1.5.0
Using docile 1.4.0
Using factory_bot 6.2.0
Using method_source 1.0.0
Using thor 1.2.1
Using railties 5.2.6
Using factory_bot_rails 6.2.0
Using faker 2.19.0
Using ffi 1.15.5
Using jsonapi-serializer 2.2.0
Using rb-fsevent 0.11.1
Using rb-inotify 0.10.1
Using ruby_dep 1.5.0
Using listen 3.1.5
Using pg 1.3.1
Using pry 0.14.1
Using puma 3.12.6
Using sprockets 4.0.2
Using sprockets-rails 3.4.2
Using rails 5.2.6
Using rspec-support 3.10.3
Using rspec-core 3.10.2
Using rspec-expectations 3.10.2
Using rspec-mocks 3.10.3
Using rspec-rails 5.1.0
Using shoulda-matchers 5.1.0
Using simplecov-html 0.12.3
Using simplecov_json_formatter 0.1.3
Using simplecov 0.21.2
Using spring 2.1.1
Using spring-watcher-listen 2.0.1
```

If there are any errors, verify that bundler, Rails, and your ruby environment are correctly setup.

4. Database Migration<br>
Before using the web application you will need to setup your databases locally by running the following command

```shell
$ rails db:{:drop,:create,:migrate,:seed}
```


5. Startup and Access<br>
Finally, in order to use the web app you will have to start the server locally and access the app through a web browser. 
- Start server

```shell
$ rails s
```

- Open web browser and visit link
    http://localhost:3000/api/v1/users
    
At this point you should be taken to a page with an example JSON response for a user

## Endpoints provided 


- get '/forecast', to: 'forecast#index'

![Screen Shot 2022-03-08 at 11 36 33 AM](https://user-images.githubusercontent.com/90224504/157283024-4c11adcc-e758-45e5-a58e-3f9b1ce09adc.png)
      
- get '/backgrounds', to: 'backgrounds#index'

![Screen Shot 2022-03-08 at 11 38 26 AM](https://user-images.githubusercontent.com/90224504/157283428-a14d3f12-df6b-4d0a-b2d0-2784f429744c.png)

- post '/users', to: 'users#create'

![Screen Shot 2022-03-07 at 5 14 21 PM](https://user-images.githubusercontent.com/90224504/157126823-4126fa96-5675-4500-b87f-0d9a0a57d3be.png)

- post '/sessions', to: 'sessions#create'

![Screen Shot 2022-03-07 at 5 13 20 PM](https://user-images.githubusercontent.com/90224504/157126673-ccd083a9-2b53-4d0a-bdc1-16e3c12ecc74.png)

- post '/road_trip', to: 'road_trip#create'

![Screen Shot 2022-03-08 at 11 41 07 AM](https://user-images.githubusercontent.com/90224504/157283914-42baba23-d7a4-4d67-be3c-cf6f2605832a.png)

- Response for invalid origin/destination i.e. Ocean or invalid location

![Screen Shot 2022-03-08 at 11 42 23 AM](https://user-images.githubusercontent.com/90224504/157284139-9d97f284-1237-4565-8b44-2e7b6db17865.png)

- Response for invalid API KEY 

![Screen Shot 2022-03-08 at 11 43 06 AM](https://user-images.githubusercontent.com/90224504/157284277-d08d2a78-c09e-4da7-a752-fbaf89ba9cc7.png)


## **Contributors** ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
    
  <tr>
      
   <td align="center"><a href="https://github.com/sethperna"><img src="https://avatars.githubusercontent.com/u/90224504?s=400&u=b0c82b444d7708000e2747f860d4d2c3efb616cc&v=4" width="100px;" alt=""/><br /><sub><b>Seth (he/him)</b></sub></a><br /><a href="https://github.com/sethperna/utah_avalanche_api/commits?author=sethperna" title="Code">💻</a> <a href="#ideas-sethperna" title="Ideas, Planning, & Feedback">�</a> <a href="https://github.com/sethperna/utah_avalanche_api/commits?author=sethperna" title="Tests">⚠️</a> <a href="https://github.com/sethperna/utah_avalanche_api/pulls?q=is%3Apr+reviewed-by%3sethperna" title="Reviewed Pull Requests">👀</a></td>
      
    </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification.
<!--

