module ThingsHelper


	def render_value(k,v)
	
		#puts k.to_s+":"+v.to_s+"("+k.class.to_s+")"
		
		if k[0,1]!="_" then
		
			disp_v=""
		
			if !v.is_a?(String) && v.respond_to?("each") && v.length>0 then
				disp_v=walk_values(v)
			else
				disp_v=v.to_s
			end
			
			if k.to_s=="url" then
				disp_v="<a href='"+disp_v+"'>"+disp_v+"</a>"
			elsif disp_v.length==65 then
				# utid
				utid=disp_v
				disp_v="<a href='/things/show/"+utid+"'>"
				
				thing=Thing.new.get(utid)
				
				disp_v=disp_v+(thing['displayname'])+"</a>"
			
			end
			
			return "<tr><td class='key'>"+k+"</td><td>"+disp_v+"</td></tr>"
		end
		
		return ""
	end

	# TODO: walk recursively
	def walk_values(values)
		out="<table class='thing'>"
		
		if values.is_a?(Hash) then
			values.each do |k,v|
				out=out+render_value(k,v)
			end
		else
			values.each do |v|
				out=out+render_value("",v)
			end
		end
		out=out+"</table>"
		return out
	end

end
