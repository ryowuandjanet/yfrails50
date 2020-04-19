class YfcasesController < ApplicationController
  include ApplicationHelper
  before_action :set_yfcase, only: [:edit, :update, :destroy, :deedtax, :yfratingscale, :realestateregistration, :complaint]
  before_action :show_helper, only: [:edit, :update, :destroy, :deedtax, :yfratingscale, :realestateregistration, :complaint]
  before_action :authenticate_user!

  # GET /yfcases
  # GET /yfcases.json
  def index
    @yfcases = Yfcase.all
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'yfcases/reporte', pdf: 'Reporte'}
    end
  end

  # GET /yfcases/1
  # GET /yfcases/1.json
  def show
    @yfcase = Yfcase.find(params[:id])
    # 地坪總面積 (平方公尺)
    @landtotalarea = @yfcase.lands.map{ |n| [n.land_area.to_f * (n.land_holding_point_personal.to_f / n.land_holding_point_all.to_f)] }.flatten.sum
    # 建坪總面積 (平方公尺)
    @buildtotalarea = @yfcase.builds.map { |n| [n.build_area.to_f * (n.build_holding_point_personal.to_f / n.build_holding_point_all.to_f)] }.flatten.sum 

    # 坪價(萬)
    @pingprice1 = @yfcase.floor_price_1.to_f / (@buildtotalarea*0.3025).to_f
    @pingprice2 = @yfcase.floor_price_2.to_f / (@buildtotalarea*0.3025).to_f
    @pingprice3 = @yfcase.floor_price_3.to_f / (@buildtotalarea*0.3025).to_f
    @pingprice4 = @yfcase.floor_price_4.to_f / (@buildtotalarea*0.3025).to_f

    # 時價(萬)

    marketpricecount = @yfcase.objectbuilds.count
    marketpricesum=@yfcase.objectbuilds.map { |n| [(testvalue(n.total_price.to_f / n.build_area.to_f ,n.plusa,n.plusb))] }.flatten
    @marketprice = marketpricesum.map!{|e| e.to_f}.sum.fdiv(marketpricesum.size) * 10000
    respond_to do |format|
    format.html
    format.json
    format.pdf {render template:'yfcases/deedtax', pdf: 'Deedtax'}
    end
    # respond_to do |format|
    # format.html
    #   format.pdf do 
    #     pdf = YfcasePdf.new(@yfcase)
    #     send_data pdf.render, 
    #     filename: "yfcase_#{@yfcase.case_number}.pdf",
    #     type: "application/pdf",
    #     disposition: "inline"
    #   end
    # end 
  end

  # GET /yfcases/new
  def new
    @yfcase = current_user.yfcases.build(floor_price_1:0,floor_price_2:0,floor_price_3:0,floor_price_4:0)
  end

  # GET /yfcases/1/edit
  def edit
  end

  # POST /yfcases
  # POST /yfcases.json
  def create
    @yfcase = current_user.yfcases.build(yfcase_params)
    @yfcase.user=current_user
    respond_to do |format|
      if @yfcase.save
        format.html { redirect_to @yfcase, notice: 'Yfcase was successfully created.' }
        format.json { render :show, status: :created, location: @yfcase }
      else
        format.html { render :new }
        format.json { render json: @yfcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yfcases/1
  # PATCH/PUT /yfcases/1.json
  def update
    respond_to do |format|
      if @yfcase.update(yfcase_params)
        format.html { redirect_to @yfcase, notice: 'Yfcase was successfully updated.' }
        format.json { render :show, status: :ok, location: @yfcase }
      else
        format.html { render :edit }
        format.json { render json: @yfcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yfcases/1
  # DELETE /yfcases/1.json
  def destroy
    @yfcase.destroy
    respond_to do |format|
      format.html { redirect_to yfcases_url, notice: 'Yfcase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def yfratingscale
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'yfcases/yfratingscale', pdf: 'Yfratingscale'}
    end
  end

  def deedtax
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'yfcases/deedtax', pdf: 'Deedtax'}
    end
  end

  def realestateregistration
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'yfcases/realestateregistration', pdf: 'Realestateregistration'}
    end
  end

  def complaint
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'yfcases/complaint', pdf: 'Complaint'}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yfcase
      @yfcase = current_user.yfcases.find(params[:id])
    end

    def show_helper
      @yfcase = Yfcase.find(params[:id])
      # 地坪總面積 (平方公尺)
      @landtotalarea = @yfcase.lands.map{ |n| [n.land_area.to_f * (n.land_holding_point_personal.to_f / n.land_holding_point_all.to_f)] }.flatten.sum
      # 建坪總面積 (平方公尺)
      @buildtotalarea = @yfcase.builds.map { |n| [n.build_area.to_f * (n.build_holding_point_personal.to_f / n.build_holding_point_all.to_f)] }.flatten.sum 

      # 坪價(萬)
      @pingprice1 = @yfcase.floor_price_1.to_f / (@buildtotalarea*0.3025).to_f
      @pingprice2 = @yfcase.floor_price_2.to_f / (@buildtotalarea*0.3025).to_f
      @pingprice3 = @yfcase.floor_price_3.to_f / (@buildtotalarea*0.3025).to_f
      @pingprice4 = @yfcase.floor_price_4.to_f / (@buildtotalarea*0.3025).to_f

      # 時價(萬)

      marketpricecount = @yfcase.objectbuilds.count
      marketpricesum=@yfcase.objectbuilds.map { |n| [(testvalue(n.total_price.to_f / n.build_area.to_f ,n.plusa,n.plusb))] }.flatten
      @marketprice = marketpricesum.map!{|e| e.to_f}.sum.fdiv(marketpricesum.size) * 10000
    end

    # Only allow a list of trusted parameters through.
    def yfcase_params
      params.require(:yfcase).permit(:case_number, \
        :country_id, :township_id, \
        :other_address, :co_owner, \
        :auction_day_1,:auction_day_2,:auction_day_3,:auction_day_4, \
        :floor_price_1,:floor_price_2,:floor_price_3,:floor_price_4, \
        :click_1,:click_2,:click_3,:click_4, \
        :monitor_1,:monitor_2,:monitor_3,:monitor_4, \
        :margin_1,:margin_2,:margin_3,:margin_4,:auction_notes, \
        :first_survey_day,:other_survey_day, \
        :foreclosure_announcement_title,:foreclosure_announcement_link,:object_photo_title,:object_photo_link, \
        :net_price_registration_market_price_title,:net_price_registration_market_price_link,:net_price_registration_map_title,:net_price_registration_map_link,:net_price_registration_photo_title,:net_price_registration_photo_link, \
        :auction_record_title,:auction_record_link,:other_notes,:survey_resolution,:final_decision, \
        :occupy,:register,:parking_space,:management_fee,:rent,:leak,:easy_parking,:railway,:vegetable_market,:supermarket,:school,:park,:post_office,:main_road,:water_and_power_failure,:good_vision, :final_decision_date, \
        personnals_attributes: [:id, :is_debtor, :is_creditor, :is_land_owner, :is_build_owner, :name, :identity_card, :birthday,:person_country ,:person_township ,:person_village ,:person_neighbor ,:person_street ,:person_section ,:person_lane ,:person_alley ,:person_number ,:person_floor , :local_phone, :mobile_phone, :personnal_notes, :_destroy], \
        lands_attributes: [:id, :land_number, :land_url, :land_area, :land_holding_point_personal, :land_holding_point_all, :_destroy], \
        objectbuilds_attributes: [:id, :address, :total_price, :build_area, :house_age, :floor_height, :surveyora, :surveyorb, :plusa, :plusb, :objectbuild_url, :_destroy], \
        builds_attributes: [:id, :build_number,:build_url,:build_area, :build_holding_point_personal, :build_holding_point_all, :build_type_use,:use_partition, :_destroy] )
    end
end

