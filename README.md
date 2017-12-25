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
# BookTest

How to run project:

Basically we have added scaffold to record shop, publisher, book 

http://localhost:3000/publishers

http://localhost:3000/shops

http://localhost:3000/books

After this you can call webservice, need to pass publisher id see below,

http://localhost:3000/webservices/1

will get sample response below

{shops:[{"id":1,"name:":"Amazon","books_sold_count":1,"books_in_stock":[{"id":1,"name:":"Book1"}]},{"id":2,"name:":"Ebay","books_sold_count":0,"books_in_stock":[{"id":4,"name:":"Book1"}]}]}