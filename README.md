# Movie Lovers!

We are going to create a movie quiz web app!! So lets see the main points of our quiz:
- Use sinatra to create the web application. So far, you only know about that one, hehe.
- Let's use IMDB gem to get the movie information.
- Use RSpec to test your classes

Go step by step and do not move forward until you finish one step!

###1 Make a search and show 9 posters!

- Create a page that will ask for a word on an input field.
- The form will do a post to another page that will do a search in IMDB with that string
- Get the first 9 results of the search
- Show the posters of those 9 results on a new page

**Make sure that there are always 9 posters**

###2 Trivia about the movies!

You are going to create a question about those 9 movies. For example you could ask "Which movie was released in 1999?"

- Choose one question that you will always ask
- Show this question on the page where you show the 9 posters
- Get the answer from the 9 movies and store it
- Create a button for each movie. Place it at the bottom of the poster for example
- The button should do a new request
- Check the answer on the new request
- Redirect to another page that tells you whether you were right or not

**Make sure there is only one correct answer**

##Extra Behaviors

### Make images clickable

Can you think of a way to be able to choose your answer selecting the image instead of the button?
Try it out!

### More questions

Create more questions to ask about the movies.
Choose one answer randomly and choose the answer for that one.
Show that question on the page.

