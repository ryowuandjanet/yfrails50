class YfcasesController < ApplicationController
  before_action :set_yfcase, only: [:show, :edit, :update, :destroy]

  # GET /yfcases
  # GET /yfcases.json
  def index
    @yfcases = Yfcase.all
  end

  # GET /yfcases/1
  # GET /yfcases/1.json
  def show
    # 地坪總面積 (平方公尺)
    @landtotalarea = @yfcase.lands.map{ |n| [n.land_area.to_f * (n.land_holding_point_personal.to_f / n.land_holding_point_all.to_f)] }.flatten.sum
    # 建坪總面積 (平方公尺)
    @buildtotalarea = @yfcase.builds.map { |n| [n.build_area.to_f * (n.build_holding_point_personal.to_f / n.build_holding_point_all.to_f)] }.flatten.sum 

  end

  # GET /yfcases/new
  def new
    @yfcase = Yfcase.new
  end

  # GET /yfcases/1/edit
  def edit
  end

  # POST /yfcases
  # POST /yfcases.json
  def create
    @yfcase = Yfcase.new(yfcase_params)

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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yfcase
      @yfcase = Yfcase.find(params[:id])
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
        :occupy,:register,:parking_space,:management_fee,:rent,:leak,:easy_parking,:railway,:vegetable_market,:supermarket,:school,:park,:post_office,:main_road,:water_and_power_failure,:good_vision, \
        personnals_attributes: [:id, :is_debtor, :is_creditor, :is_land_owner, :is_build_owner, :name, :identity_card, :birthday, :other_address, :local_phone, :mobile_phone, :personnal_notes, :_destroy], \
        lands_attributes: [:id, :land_number, :land_url, :land_area, :land_holding_point_personal, :land_holding_point_all, :_destroy], \
        builds_attributes: [:id, :build_number,:build_url,:build_area, :build_holding_point_personal, :build_holding_point_all, :build_type_use,:use_partition, :_destroy] )
    end
end

