# README

This is a blog type app that I created following the Youtube turorial on Traversy Media channel : [here](https://www.youtube.com/watch?v=pPy0GQJLZUM). I am using Ruby on Rails, with database, basic authentification and a full CRUD type blog with comments (one to many relationship type from blog post to comments).

* Ruby version : 
Ruby 2.5.3p105 , Rails 5.2.1. \
Gem 2.7.6 and Bundler version 1.16.6.


* Configuration
To generate a Rails App :
``
  rails new nameOfYourApp
``

This will create many files and folder that will be used on our Rails App. Ruby on Rails is based on a MVC (model view controller) design pattern, and these folders will be found in the building block of the app.

**Model**
Deals with the database/API. It is only concerned with the data.

**View**
What the User will see in the Browser. In Rails they are fairly similar to the components we use on React.js.

**Controller**
Responisible for the url, and what is loaded on the page. The controllers are directing the models and views. They contain the functions.
In Rails a function is declared as 
``
def myFunction
  @myvariable = your code
end
``

The file structure is as :
``myFile.html.erb (erb stands for embeded ruby)
``

To start using Ruby on the Winsdows OS, we need to download Ruby and the Rails Installer. I faced an issue with the compatibility between Windows and Sqlite3 which is the database format used by Rails by default. The tutoriel I was following also mentionned a possible Ruby/Windows clash with the Gemfile source of https://rubygems.org (which then should be solved via only keeping http://rubygems.org).

Go to your App folder :
``
  cd nameOfYourApp
``

Set up your App - install the dependencies :
``
  bundle install
``

Start your Rails dev server :
``
  rails server (rails is very slack, it will also accept 'rails s')
``

Make a new controller :
``
  rails g controller Posts
``

This will create all the necessary files to run on the Rails App. A controller is by standarts a plurial. A model will be a singular. 

Show me my App routes : 
``
  rake routes
``
Rails will automatically generate the routes needed for our app.

* Database creation
Create your model : 
``
  rails g model Post title:string body:text
``
This create also the migration file. It does not run it itself.

Run the migration to create the table : 
``
  rake db:migrate
``

* Database initialization

