# New York Times RSS Reader for Good Dog

url:  https://gooddogrss.herokuapp.com/

This *New York Times* RSS reader was built using Ruby on Rails for Good Dog Design. The home page utilizes Ruby's RSS parser to display the titles, links, and publication date/time for the latest articles from the *Times* home page.  Users can scroll to the bottom of the page to view feeds from other sections of the paper.

The app also allows users to create profiles and passwords with BCrypt authentication in order to save their favorite articles by clicking the yellow stars next to each article. Users have a clean profile interface listing articles by title along with links to read the articles on the *Times* site, as well as the option to remove articles from their favorites. As this is a sample app for Good Dog, I created a guest login (click the picture of Rumo, my own Good Dog) that users can choose instead of creating their own credentials.

The app's build focuses on slim databasing and intuitive navigation. Each *Times* section pulls from the *Times* API in real time, but articles are not saved to the database unless they are 'favorited' by a user. When users click stars to 'favorite' or 'unfavorite' articles, they are redirected to continue browsing the same newspaper section or the favorite articles list that they clicked from.

I welcome any comments or suggestions for improvement.  Happy New Years!
-Noah

### Tech

* Ruby on Rails
* Twitter Bootstrap
* Heroku

### Gallery

A screenshot of the feed from the technology section of the *Times*. 'Favorited' articles are marked by a filled-in star, while 'not-yet-favorited' articles are marked by empty stars.

<img src="/public/first_screen.png" width="600">

A screenshot of a user's favorite articles list.

<img src="/public/profile.png" width="600">

A screenshot of the sign in page.  Users can click on Rumo's picture to log in as guests.

<img src="/public/sign_in.png" width="600">
