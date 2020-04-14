class YfcaseSubsigntrueaController < ApplicationController
	before_action :set_yfcase
	def index
	
	end

	def new
		@signtruea = @yfcase.subsigntrueas.new
	end

	def create
		@signtruea = @yfcase.subsigntrueas.new(signtruea_params)
		if @signtruea.save
			redirect_to yfcase_path(@yfcase)
		else
			render :action => "new"
		end
	end

	protected
	def set_yfcase
		@yfcase=Yfcase.find(params[:yfcase_id])
	end

	def signtruea_params
		params.require(:subsigntruea).permit(:signtruea,:signtruea_first_name,:signtruea_last_name,:signtruea_date)
	end
end
