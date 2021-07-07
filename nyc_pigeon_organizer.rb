def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  pigeon_name_list = {}
  
#populate names
  pigeon_data.each do |info, info_details|
    info_details.each do |k, v|
      v.each do |array|
        if pigeon_name_list[0] == nil 
          pigeon_name_list[array] = {}
        elsif pigeon_name_list.has_key?(array) == FALSE 
          pigeon_name_list[array] = {}
        end
      end
    end
  end

#populate colors
  pigeon_data[:color].each do |color_detail, name_array|
    name_array.each do |names|
      if pigeon_name_list[names] == {} 
        pigeon_name_list[names][:color] = [color_detail.to_s]
      else
        pigeon_name_list[names][:color].push(color_detail.to_s)
      end
    end 
  end

#populate gender
  pigeon_data[:gender].each do |sex, name_array|
    name_array.each do |names|
      pigeon_name_list[names][:gender] = [sex.to_s]
    end
  end

#populate living location
  pigeon_data[:lives].each do |location, name_array|
    name_array.each do |names|
      pigeon_name_list[names][:lives] = [location.to_s]
    end
  end

pigeon_name_list
end