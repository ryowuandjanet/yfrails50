module ApplicationHelper
	# # 平方公尺換算成坪數
	# def squaremetertoping(meter)
	# 	result=meter * 0.3025
	# 	return result
	# end

	# # 計算持分
	# def holdingpoint(arg1,arg2)
	# 	result = arg1.to_f / arg2.to_f
	# 	return result
	# end

	# 計算面積 ( 面積 , 持分[個人] , 持分[所有] , 倍數[平方公尺=0.3025坪] ) 
	def area(area,holdingpointperson,holdingpointall,multiple)
		result = area.to_f * multiple * (holdingpointperson.to_f / holdingpointall.to_f)
		return result 
	end



	# # 計算物件坪價 ( 底價 , 建坪[坪] , 持分[個人] , 持分[所有] ) 
	# def unitprice(floorprice,buildarea,buildholdingpointperson,buildholdingpointall)
	# 	result= floorprice / (buildarea * 0.3025*(buildholdingpointperson.to_f / buildholdingpointall.to_f))
	# 	return result
	# end
	

	# # 計算時價( 總價 , 坪數[坪] , 加成A , 加成B , 筆數 )
	# def marketprice(object,totalprice,buildarea,plusa,plusb)
	# 	# 計算坪價
	# 	unitprice = totalprice.to_f / buildarea.to_f
	# 	plus = (plusa.to_f + plusb.to_f) / 2
	# 	return unitprice * plus
	# end

	# # 計算建議加價費用 ( 底價 , 點閱 , 監控  ) 
	# def suggestedincrease(floorprice,click,monitor)
	# 	result=((((click.to_f-100)/100).abs.ceil)*(monitor.to_f/100*3))
		
	# 	if result > 0.15
	# 		return  "(#{0.15*100}%)/#{currency_helper(floorprice*(1+0.15),0)}"
	# 	else
	# 		return "(#{result*100}%)/#{currency_helper(floorprice*(1+result),0)}"
	# 	end
	# end	

	# # 設定貨幣格式helper
	# def currency_helper(price,precision)
	# 	result=number_to_currency(price, unit: "", precision: precision )
	# 	return result
	# end




	# def testvalue(x,a,b)
	# 	if a == nil && b == nil
	# 		x * 1
	# 	elsif b == nil
	# 		x * a
	# 	elsif a == nil
	# 		x * b
	# 	else
	# 		x * ((a+b)/2)
	# 	end
	# end

	# def all_tags
	#   tags.map(&:totalpriced)
	# end

	# def averagebetween(arga,argb)
	# 	return (arga+argb) / 2
	# end

	# def buildplus(objectbuild,buildarea,plusa,plusb)
	# 	plus = ( plusa + plusb ) / 2
	# 	result = objectbuild / buildarea * plus
	# 	return result
	# end

	# def nowprice(objecta,objectb)
	# 	result= ( objecta + objectb ) / 2 * 10000
	# 	return result
	# end

	# # 在建物查檢表的頁面(template)以yesno的方式來呈現
	# def buttonyes
	# 	data = "
	# 		<div class='onoffswitch'>
	# 		    <input type='checkbox' name='onoffswitch' class='onoffswitch-checkbox' id='myonoffswitch' checked>
	# 		    <label class='onoffswitch-label' for='myonoffswitch'>
	# 		        <span class='onoffswitch-inner'></span>
	# 		        <span class='onoffswitch-switch'></span>
	# 		    </label>
	# 		</div>
	# 	"
	# 	data.html_safe
	# end

	def buttonyeson(bool)
		if bool == true
			data = "
				<span style='color: Blue;'><i class='fa fa-check-circle fa-2x'></i></span>
				<span style='color: gray;'><i class='fa fa-circle fa-2x'></i></span>
			"
			data.html_safe
		else
			data = "
				<span style='color: gray;'><i class='fa fa-circle fa-2x'></i></span>
				<span style='color: Red;'><i class='fa fa-times-circle fa-2x'></i></span>
			"
			data.html_safe
		end
	end

	# def bootstrap_class_for_flash(flash_type)
	#     case flash_type
	#     when 'success'
	#       'alert-success'
	#     when 'error'
	#       'alert-danger'
	#     when 'alert'
	#       'alert-warning'
	#     when 'notice'
	#       'alert-info'
	#     else
	#       flash_type.to_s
	#     end
	# end
end
