# Mario's Reviews
  
### An app for leaving reviews!
  
## `Date created`
#### 3/19/2021

***

This is a week 4-5 ` Ruby/Rails ` Epicodus school project.\
This app uses postgresql to leave reviews for products.\
Requirements for products include: Name, Cost, and Country of Origin.\
Requirements for reviews include: Author, Content Body, Rating.\
requirements for users include ownership of reviews, and admin roles for crud functionality.

***
### `Technology Used:`

* Ruby `2.6.6`
* Rails `5.2.0`
* Html
* Css
* Flex Box
* Css Grid
* Embedded Ruby
* PostgreSQL
* Bundler
* TDD (Test-driven development)
* RSpec
* capybara
* Pry
* ByeBug
* git


## `Installation :`
***
* These instructions assume you have ruby, rails, & postgres installed
* Install [Ruby and Rails](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-ruby)
* Install [PostgreSQL](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-postgres)
***
  
* Go to ( https://github.com/dcouch440/marios_reviews ).

*  Navigate to the code button on the Github website.

* Click on the code button to open the menu.

- Copy the HTTPS code by clicking the clipboard next to the link.

- Within your Bash terminal navigate to your desired location by using cd fallowed by your desired directory.

```bash
 cd Desktop
```

- Once you have chosen your desired directory use the command.
  
```bash
git clone https://github.com/dcouch440/marios_reviews.git
```

<div
  style="
    background-color: #d1ecf1;
    color: grey; padding: 6px;
    font-size: 9px;
    border-radius: 5px;
    border: 1px solid #d4ecf1;
    margin-bottom: 12px"
>
  <span
    style="
      font-size: 12px;
      font-weight: 600;
      color: #0c5460;"
  >
    ⓘ
  </span>
  <span
    style="
      font-size: 12px;
      font-weight: 900;
      color: #0c5460;
      margin-bottom: 24px"
  >
    Note :
  </span>
  If you have any problems make sure your HTTPS code is correct! The example above might not be the most recent HTTPS code!
</div>
  
* Then after the process is completed use the command.
```
  cd (the file name that you saved it as)
```

* now open the project with

``` bash
code .
```
For windows users navigate to the database.yml file to set your username and password.

```
Setup postgresql for rails

	📁 config > 📑 database.yml
        default: &default
          adapter: postgresql ✔️
          encoding: unicode
          pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
          username: (username here) ✔️
          password: (password here) ✔️

```
* If you wish to keep these private you can also use a credentials password
* See this link to learn how to do so. ( https://www.youtube.com/watch?v=BHgvPPr2nLE )
  
* Start off by deleting your credentials.yml.enc file and master.key (within config folder) in order to generate another

```
  For vs code users try
  EDITOR="code --wait" rails credentials:edit
```

* Within the file add

```
  pg_database_username: add username here
  pg_database_password: add password here
```

* Then inside the database.yml (see description above) add (or uncomment)

```
  username: <%= Rails.application.credentials.pg_database_username %>
  password: <%= Rails.application.credentials.pg_database_password %>
```

* Thats all for credentials

* Within the main directory of the project create your databases with

```
rails db:create
```

```
rails db:migrate
```

* From here to start the server you will need to type in:

```
  rails s
```

* visit localhost:3000 to view the app


### Admin or user?

##### This app is set up to use from a user or admin perspective, each role will have different privileges.
* To make a Admin you will need to generate from the console.
* Start by entering in information to your terminal as such:

```
$ rails c


 ( wait for loading )



 ( from here you will see )


Loading development environment (Rails 5.2.4.5)
irb(main):001:0>


  Type these instructions out while replacing the '' with information you want.
  The admin variable should be set to true as seen below.
  The default will always be false so don't worry about that.


> User.create!(email: '', password: '', password_confirmation: '', admin: true)


  If things are set up correctly you should now be able to login from the email.
  Fallow along with error response instructions if things do not look right.

```

## `Schema`
<img src="public/img/schema_mario.PNG">
  


  
***
The MIT License (MIT)

Copyright (c) 2021 David Couch

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
