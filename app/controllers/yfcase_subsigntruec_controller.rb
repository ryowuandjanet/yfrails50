class YfcaseSubsigntruecController < ApplicationController
	before_action :set_yfcase
	def index
	
	end

	def new
		@signtruec = @yfcase.subsigntruecs.new
	end

	def create
		@signtruec = @yfcase.subsigntruecs.new(signtruec_params)
		if @signtruec.save
			redirect_to yfcase_path(@yfcase)
		else
			render :action => "new"
		end
	end

	protected
	def set_yfcase
		@yfcase=Yfcase.find(params[:yfcase_id])
	end

	def signtruec_params
		params.require(:subsigntruec).permit(:signtruec,:signtruec_first_name,:signtruec_last_name,:signtruec_date)
	end
end
