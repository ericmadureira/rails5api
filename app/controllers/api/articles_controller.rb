module Api
	class ArticlesController < ApplicationController
		def index
			articles = Article.order('created_at DESC');
			render json: {status: 'SUCCESS', message:'Articles loaded', data:articles}, status: :ok
		end
	end
end