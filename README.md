Final project for MPCS 52553 Web Development

*** READ ME HERE ***
Please run: bundle install --without production to set up the dependencies for development testing!
To access this app on a public URL, please go to: https://safe-refuge-1064.herokuapp.com/

--Feature Choice--
The primary extra feature choice selected for this app was the deployment to a public URL. 
I deployed this app on heroku. Please go to: https://safe-refuge-1064.herokuapp.com/

I also used Bootstrap just a little for basic CSS styling of the website.

--Primary References--
1. Lecture code by Professor Cohen on GitHub
2. Google Maps for Rails Guide: https://github.com/apneadiving/Google-Maps-for-Rails
3. Stack Overflow (see individual controllers and views files for specific references used)
4. Heroku and Rails Guide for deploying Rails app on Heroku
https://devcenter.heroku.com/articles/getting-started-with-rails4
http://guides.railsgirls.com/heroku/

--User--
A signed in user has access to create and edit festivals, locations, genres, and artists. Note that an anonymous user will not be able to see these options nor will they have the capability to execute these actions.

---Artist---
Please note that an "artist" does not just mean an artist (like a painter) in the model. The intent of the model is to indicate any person or entity that participates and contributes to a festival such as a food artist (even a restaurant), a musical artist, etc. 

An artist cannot be edited or updated in this application.  The only type of "update" that can occur is adding the artist or removing the festival from a performance, which is handled by the Performance controller.

---Performance---
This is the many to many model that connects the artist to the festival. In the view, an artist can be added or removed from a festival, which will remove the entry in this model between the festival and artist.

--Festivals, Locations, Genres--
Festivals are celebrations of some kind, and this app focuses on festivals in the Chicago area. Festivals have a variety of artists, a specific location, and a genre. Users will be able to view festivals by location and genre.