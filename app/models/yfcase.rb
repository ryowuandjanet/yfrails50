class Yfcase < ApplicationRecord
	belongs_to :user, :optional => true
	belongs_to :country, :optional => true
	belongs_to :township, :optional => true
	has_many :personnals,dependent: :delete_all
	has_many :lands,dependent: :delete_all
	has_many :builds,dependent: :delete_all
	# has_many :buildchecklists,dependent: :delete_all
	has_many :objectbuilds,dependent: :delete_all
	has_many :subsigntrueas,dependent: :delete_all
	has_many :subsigntruebs,dependent: :delete_all
	has_many :subsigntruecs,dependent: :delete_all
	belongs_to :owner, class_name: "User", foreign_key: :user_id

	def editable_by?(user)
		user && user == owner
	end

	# AUCTION_LIST=["","第一拍","第二拍","第三拍","第四拍"]
	CLASS_LIST=["1公寓(5樓含以下無電梯)","2透天厝","3店面(店舖)","4辦公商業大樓","5住宅大樓(11層含以上有電梯)","6華廈(10層含以下有電梯)","7套房(1房(1廳)1衛)","8工廠","9廠辦","10農舍","11倉庫","Z其他等型態"]
	AREA_LIST=["第一種住宅區","第二種住宅區","第三種住宅區","第四種住宅區","第一種商業區","第二種商業區","第三種商業區","第四種商業區","第二種工業區","第三種工業區","行政區","文教區","倉庫區","風景區","農業區","保護區","行水區","保存區","特定專用區"]
	JUDGMENT_LIST=[" ","3拍進場","4拍進場","放棄"]
	PUBLIC_LIST=[" ","公","私"]
	accepts_nested_attributes_for :lands,reject_if: proc { |attributes| attributes['land_number'].blank? },allow_destroy: true
	accepts_nested_attributes_for :builds,reject_if: proc { |attributes| attributes['build_number'].blank? },allow_destroy: true
	accepts_nested_attributes_for :personnals, reject_if: proc { |attributes| attributes['name'].blank? },allow_destroy: true
	accepts_nested_attributes_for :objectbuilds, reject_if: proc { |attributes| attributes['address'].blank? },allow_destroy: true
	validates :case_number, presence: true
end


