class ArticlesController < ApplicationController
	# before_action :authenticate_user!
	before_action :find_article,only: [:show,:edit,:update,:destroy]

	def index
		@articles = Article.all.order(created_at: :desc)
	end

	def show
		# @random = Article.all.order("RAND()").first
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.create(article_params)
		redirect_to article_path(@article)
	end

	def edit
	end

	def update
		if @article.update(article_params)
			respond_to do |format|
				format.html{ redirect_to article_path(@article) }
				format.js 
			end
		else
			render 'edit'
		end
	end

	def destroy
		if @article.destroy
			respond_to do |format|
				format.html{ redirect_to root_path }
				format.js
			end
		end
	end

	private
		def find_article
			@article = Article.find(params[:id])
		end

		def article_params
			params.require(:article).permit(:story,:photo)
		end
end
