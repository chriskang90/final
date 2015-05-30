Final project for MPCS 52553 Web Development

Primary References
1. Lecture code by Professor Cohen on GitHub
2. Google Maps for Rails Guide: https://github.com/apneadiving/Google-Maps-for-Rails
3. Stack Overflow (see individual controllers and views for specific references used)

--User--
A signed in user has access to create and edit festivals, locations, genres, and artists. Note that an anonymous user will not be able to see these options nor will they have the capability.

---Artist---
Please note that an "artist" does not just mean an artist (like a painter) in the model. The intent of the model is to indicate any person or entity that participates and contributes to a festival such as a food artist, a musical artist, etc. 

An artist cannot be edited or updated in this application.  The only type of "update" that can occur is adding the artist or removing the festival from a performance, which is handled by the Performance controller.

---Performance---
This is the many to many model that connects the artist to the festival. In the view, an artist can be added or removed from a festival, which will remove the entry in this model between the festival and artist.
