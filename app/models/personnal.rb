class Personnal < ApplicationRecord
  belongs_to :yfcase
  ID_CODE_LIST=[" ","A","B"]
  PUBLIC_LIST=[" ","公","私"]
end
