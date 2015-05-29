class HomeController < ApplicationController

	def index

		@categories = Category.all
		@revenues	= Revenue.all

	end	

	def category

		id = params[:id] 
		@category = Category.find(id)

	end	

end
