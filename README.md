# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# HISTORY

Demo https://datatables.net/

```
./bin/rails generate controller Welcome index
./bin/rails generate controller Data index

# create db schema
./bin/rails generate model Article title:string
./bin/rails db:migrate

# populate db 
vi db/seeds.rb
./bin/rails db:seed

# confirm db
sqlite3 db/development.sqlite3
> select * from articles;
> .quit

vi app/views/welcome/index.html.erb      # implement ui
vi app/controllers/data_controller.rb # implement server-side scripts

```
