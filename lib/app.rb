require 'imdb'
require 'pry'

class GameQuizz 
	attr_reader :returned_movies, :questions, :answers
	def initialize
		@returned_movies = []
		@questions = []
		@answers = []
	end

	def search_movies(string)

		movies_list = Imdb::Search.new(string)
		
		i = 0
			while @returned_movies.size < 9 do
					if !movies_list.movies[i].poster.nil? && movies_list.movies[i].release_date != ""
					@returned_movies << movies_list.movies[i]
							i += 1 
					else
							i += 1
					end
		    end
		@returned_movies
	end

	def create_questions
		mov = @returned_movies[rand(0..9)]
		release_date = mov.release_date
		q1 = "Which movie was released in #{release_date} ???"
		@questions << q1
		@answers << mov.id
		
		mov2 = @returned_movies[rand(0..9)]
		director = mov2.director
		q2 ="What film was directed by #{director}"
		@questions << q2
		@answers << mov.id 

		mov3 = @returned_movies[rand(0..9)]
		star = mov3.cast_members
		q3 = "What film was starred by #{star}"
		@questions << q3
		@answers << mov3.id
		
	end 

	def get_score(responses, user_responses)
		score = 0
		i = 0
		responses.each do |response|
			if response == user_responses[i]
				score += 1
				i += 1
			else
				i += 1
			end
		end
		score
	end
end
