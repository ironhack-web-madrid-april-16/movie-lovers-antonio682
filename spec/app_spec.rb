require File.expand_path '../spec_helper.rb',__FILE__
require 'pry'

RSpec.describe "Movies Quizz Game" do

	
	it ".search_movies returns an array of 9 films searched by a string parameter" do
	    film_array = [Film.new("0095016", "Die Hard", "url_false")]
	    film_array_returned = GameQuizz.new.search_movies("die hard")
		expect(film_array_returned[0].id).to eq(film_array[0].id)
	end	

	it ".create_question create questions" do 
		quiz = GameQuizz.new.create_questions 
		expect(app.create_questions).to eq(quiz.questions.size == 3)
	end

	it ".get_scores returns final score" do
		quizz = GameQuizz.new
		array1 = [1,5,7]
		array2 = [2,5,7]
		quizz.get_score(array1, array2)
		expect(quizz.get_score(array1, array2)).to eq(2)
	end
 end 

