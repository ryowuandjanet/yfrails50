class ObjectbuildPlusratebsController < ApplicationController
	before_action :set_yfcase
	def index
	
	end

	def new
		@plusratea = @objectbuild.plusrateas.new(plusa: 0)
	end

	def create
		@plusratea = @objectbuild.plusrateas.new(plusratea_params)
		if @plusratea.save
			redirect_to yfcase_path(@yfcase)
		else
			render :action => "new"
		end
	end

	protected
	def set_yfcase
		@yfcase=Yfcase.find(params[:yfcase_id])
		@objectbuild=@yfcase.objectbuilds.find(params[:objectbuild_id])
	end

	def plusratea_params
		params.require(:plusratea).permit(:plusa,:persona)
	end
end
