class ObjectbuildPlusrateasController < ApplicationController
	before_action :set_yfcase
	def index
	
	end

	def new
		@plusrateb = @objectbuild.plusratebs.new(plusb: 0)
	end

	def create
		@plusrateb = @objectbuild.plusratebs.new(plusrateb_params)
		if @plusrateb.save
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

	def plusrateb_params
		params.require(:plusrateb).permit(:plusb,:personb)
	end
end
