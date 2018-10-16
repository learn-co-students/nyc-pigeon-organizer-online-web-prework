def nyc_pigeon_organizer(data)
list = {}
   data.each do |key, value|
    value.each do |x, y|
      y.each do |i|
        if !list.include?(name)
         list[i] = {key => [key2.to_s]}
        elsif pigeon_list[name].include?(key)
          list[i][key] << x.to_s
        else
          list[i][key] = [x.to_s]
        end
      end
    end
  end
  pigeon_list
end 	end 
end