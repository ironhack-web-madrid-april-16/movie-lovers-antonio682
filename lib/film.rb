# fake class to make quicker testing because imdb sometimes takes so much time responding 
#require_relative '../spec/app.rb'
class Film
	attr_accessor :id, :title, :url
	def initialize(id,title,url)
		@id = id
		@title = title
		@url = url
	end
end
