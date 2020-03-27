class YfcaseObjectbuildsController < ApplicationController
	before_action :set_plus
	def editplusratea
		@plusa = @yfcase.objectbuilds.find(params[:id])
	end

	def updateplusratea
		@plusa = @yfcase.objectbuilds.find(params[:id])
		if @plusa.update(plusa_params)
			redirect_to yfcase_path( @yfcase )
		else
			render :action => "editplus"
		end
	end

	def editplusrateb
		@plusb = @yfcase.objectbuilds.find(params[:id])
	end

	def updateplusrateb
		@plusb = @yfcase.objectbuilds.find(params[:id])
		if @plusb.update(plusa_params)
			redirect_to yfcase_path( @yfcase )
		else
			render :action => "editplusrateb"
		end
	end
	protected
	def set_plus
		@yfcase=Yfcase.find(params[:yfcase_id])
	end

	def plusa_params
		params.require(:objectbuild).permit(:plusa,:plusb,:surveyora,:surveyorb)
	end
end
