class YfcaseSubsigntruebController < ApplicationController
	before_action :set_yfcase
	def index
	
	end

	def new
		@signtrueb = @yfcase.subsigntruebs.new
	end

	def create
		@signtrueb = @yfcase.subsigntruebs.new(signtrueb_params)
		if @signtrueb.save
			redirect_to yfcase_path(@yfcase)
		else
			render :action => "new"
		end
	end

	protected
	def set_yfcase
		@yfcase=Yfcase.find(params[:yfcase_id])
	end

	def signtrueb_params
		params.require(:subsigntrueb).permit(:signtrueb,:signtrueb_first_name,:signtrueb_last_name,:signtrueb_date)
	end
end
