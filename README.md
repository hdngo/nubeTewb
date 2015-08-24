#nubeTewb

##Description 
nubeTewb is a video archive platform where users may browse through YouTube dance tutorials based on select categories. It also allows users to search for videos on YouTube and add them into existing categories.

[View it on Heroku!](https://nube-Tewb.herokuapp.com)

##Technologies Used
  * Backend: Rails API, Ruby
  * Frontend: Javascript (jQuery, AJAX, React), HTML, CSS
  * Other: react-rails Ruby gem, YouTube API (yt/Fullscreen Ruby gem)

## Demo 

The [video](https://www.youtube.com/watch?v=F07X98YysR8) should still be easy to follow on 1.5x speed!

##Timeline:
* 00:00 - 05:25 Intro
* 05:25 - 13:04 Demoing the App
* 13:04 - 25:38 Using Rails w/Youtube's API for the back-end
* 25:38 - 52:27 Using React & AJAX for the front-end
* 52:27 - 55:05 Thoughts on contributions and Reflection 

##User Stories
  * A user can view the the list of dance tutorial video categories.
  * A user can view the tutorial videos for a particular dance category.
  * A user can search YouTube for other videos.
  * A user can add a YouTube video from his/her search to an existing video category.

##Challenges I faced
  * Abstracting our React components
  * Occasional YouTube API queries
  * Dealing with nested Rails resources
  
##Next Steps
  * Implement user approval system for adding new videos
  * Add like/dislike feature
  * Add video removal feature
  * Remove previous page content for all pages
  * Add user accounts
  * Implement video upload from computer

## Getting started with nubeTewb


* Current Ruby version: 2.2.1

* System dependencies
	Please see the Gemfile.
	Most importantly, nubeTewb uses [Yt/Fullscreen](https://github.com/Fullscreen/yt), which is a Ruby client for the YouTube API, and the [react-rails](https://github.com/reactjs/react-rails) gem.


### Configuration

### Database Setup
	In order to get the database up and running, run the following commands:
	<tt>bundle exec rake db:create</tt>
	<tt>bundle exec rake db:migrate</tt>
	<tt>bundle exec rake db:seed</tt>

	Note that it may take a while for the database to finish seeding as there are 3,000 videos being created, so it may take around 10-20 minutes give or take. Feel free to modify the seed file to change the limit parameter of each query to shorten the seed time.

### How to run the test suite
	There's yet to be any sort of pre-configuration for testing, so in order to test that the routes are working, run <tt>bundle exec rake db:test:prepare</tt> followed by <tt>bundle exec rspec</tt>.


### Starting up the server
	Subject to change. In your terminal, simply navigate over to the appropriate folder where you've cloned the project and run <tt>bundle exec rails s</tt> which should start up your server on Port:3000.

## Contribute!

There are a lot of features that can be added to this project. 

* For example, there are currently no features for adding new categories or editing/updating existing categories/videos. 

* A second major component could involve implementing an approval system for videos so that users can't simply fetch any old YouTube video and save it in the archives.

* In regards to styling, ideas are more than welcome, but please discuss them with me before you implement any changes!


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
