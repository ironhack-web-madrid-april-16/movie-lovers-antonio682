require "sinatra"
require "haml"
require "sinatra/reloader" if development?
require 'pry'
require './lib/app.rb'

enable :sessions
get "/" do
	erb(:index)
end

post "/game" do 
	session[:title_s] = params[:title]
	new_game = GameQuizz.new
    @list = new_game.search_movies(session[:title_s])
    new_game.create_questions
    @questions = new_game.questions
    session[:answers] = new_game.answers
	erb(:result)
end

get "/new_search" do
	session.clear
	redirect("/")
end

post "/score" do 
	response1 = params[:response0]
	response2 = params[:response1]
	response3 = params[:response2]
	user_responses = [response1, response2, response3]
	@score = GameQuizz.new.get_score(user_responses, session[:answers])
	erb(:quiz)
end
