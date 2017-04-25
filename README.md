# friendly_tweeter

Pushes friendly tweets through web notifications to remind you to be a human and quit clacking away at that keyboard all the time

GET STARTED

- Create a `.env` file and fill in blanks from `.env.example`
- `npm install`
- `npm start`
- Open a new terminal window and `cd` into the root directory
- `bundle install`
- `ruby twitter.rb`
- visit 'http://localhost:{PORT}' --> I used 8080 cuz I think it looks cutes

DEAR LORD MAKE THE NOTIFICATIONS STOP

- I mean first off, calm down...then hit `ctrl c` on both terminal windows and close the browser window

CAN I CHANGE THE TWITTER ACCOUNT?

- Totally, in the `twitter.rb` file, find the routes and change `tinycarebot` to whatever your heart desires

WHY IS THIS CODE SO HACKY AND GROSS?

- Honestly, I feel so attacked right now... But also I threw this together in a hot second. Push notifications are way easier in Javascript, but authorization to Twitter was easier in Ruby. So that's where the hodgepodge of code came from

THIS CODE IS STARTING TO MAKE ME CRINGE, CAN I PLEASE HELP YOU MAKE THIS BETTER?

- Abso-tut-ley, submit me a pull request and lets get twerking!
