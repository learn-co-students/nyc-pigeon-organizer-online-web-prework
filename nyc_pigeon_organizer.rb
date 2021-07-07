
def nyc_pigeon_organizer(data)
pigeon_list = {}
data.each do |attribute_key, attribute_value|
  attribute_value.each do |details, pigeon_name_array|
   pigeon_name_array.each do |name|
       if !pigeon_list.has_key?(name)
        pigeon_list[name] = {}
        end
     if !pigeon_list[name].has_key?(attribute_key)
        pigeon_list[name][attribute_key] = []
       end 
      if !pigeon_list[name][attribute_key].include?(details)
        pigeon_list[name][attribute_key] << details.to_s
      end
    end 
    end 
  end 
pigeon_list
end

