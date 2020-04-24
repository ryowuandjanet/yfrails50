require 'prawn/table'
class YfcasePdf < Prawn::Document
	def initialize(yfcase)
		super(top_margin: 70)
		@yfcase = yfcase
		font_families.update(
			"msjh" => {
				# :normal => "#{Prawn::DATADIR}/fonts/msjh.ttf"
				:normal => "/assets/msjh.ttf"
			}
		)

		font("msjh") do
			yfcase_title
			line_items
		end
	end

	def yfcase_title
		text "Post \##{@yfcase.case_number}",size: 30
	end

	def line_items
		move_down 20
		table yfcase_id_all do
			columns(1..2).algin = :right
			self.row_colors = ["DDDDDD","FFFFFF"]
			self.column_widths =100
			self.header = true
		end
	end

	def yfcase_id_all
		[["案號",@yfcase.case_number,"債務人","債權人"]] +
		[["地址",@yfcase.other_address]] 
	end

end