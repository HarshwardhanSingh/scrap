class PagesController < ApplicationController

	def index
		@newsletter = Article.new()
	end
	
end
