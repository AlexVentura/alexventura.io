# [AlexVentura.io](https://alexventura.io) - Personal Site

This is my personal _Blogging_ site to share knowledge with the community as _"give it back"_ personal and professional value for me. But also, this is a place to show personal projects and progressively, in the future, show visitors my personal resume and timeline to share events that I attended or I orchestrated by myself like talks, workshops, hackatons, etc.

### Necessary steps to get the application up and running

Things you may want to cover:

* Ruby version
	> You must have Ruby 2.5.0 already installed

	> You must have Rails 5.1.6 already installed
* System dependencies
	* PostgreSQL as database, get it [here](http://postgresapp.com).
	* Install described gems in the `gemfile` by running
	```sh
	$ bundle install
	```
* Configuration
	* Create a file in the project root path named `.env`
	* Add the following variable to conect to local DB
	```sh
	DEV_DATABASE_PASSWORD=your_password
	```
* Database creation
	* Create the Data Base by running
	```sh
	$ rake db:create
	$ rake db:migrate
	```
* Database initialization
	* Initialize the Data Base by running
	```sh
	$ rake db:seed
	```
* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Planning our Application

1. Answer Questions:
	- What are we building?
	- Who are we building it for?
	- What features do we need to have?
2. User Stories
3. Model our Data
4. Think through the pages we need in our app

## Questions

1. **_What are we building?_**

	We are building a personal site. A place where we can blog, share examples of our work, and let people contact us.

2. **_Who are we building it for?_**

	We are building it for ourselves, but we teach others in the process. Show potential employers that we know what we are doing.

3. **_What features do we want to have?_**
	- Posts
		- Create / Edit / Destroy
		- Markdown
		- Syntax highlighting
		- Comments (Disqus)
		- Cover image
		- Share posts in Facebook and Twitter
		- Have different tags for Categories
		- View's count
	- Projects
		- Create / Edit / Destroy
		- Cover image
	- Contact
		- Contact form
		- Sendgrid
	- Categories
		- Create / Edit / Destroy
	- User (Devise)

## User Stories

As a blank, I want to be able to blank, so that blank.

- As a user, I want to be able to create posts so that I can share what I am learning on my blog.
- As a user, I want to be able to edit & destroy posts, so that I can manage my blog.
- As a user, I want to be able to write posts in markdown format so that it's easy for me to write posts.
- As a user, I want to be able to highlight the various syntax of code blocks that I share on my blog.
- As a user, I want to be able to add various categories(tags) to the post.
- As a user, I want to be able to count how many views each post has had.
- As a user, I want to be able to know the state of any post (draft, published, pending, etc.).
- As a user, I want to show the visitors and potential employers examples of my work, or stuff I've built.
- As a user, I want to be able to have visitors contact me through a form on my site.
- As a user, I want visitors to be able to leave comments on my posts.
- AS a user, I want visitors to be able to share posts in Facebook and Twitter.

## Modeling our Data

- **Post**

	```ruby
	title:string
	content:string
	cover:string
	visits_count:integer
	state:string
	```

- **Project**

	```ruby
	title:string
	description:text
	cover:string
	link:string
	```

- **User**

	```ruby
	Devise defaults
	full_name:string
	```

## Think through the pages we need in our app

- Home
- Posts#index
- Posts#Show
- Projects#index
- Projects#Show
- Contact
