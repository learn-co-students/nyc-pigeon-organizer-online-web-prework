def nyc_pigeon_organizer(data)
  pigeon_list = {}
   data.each do |key, value|
    value.each do |key2, value2_array|
      value2_array.each do |name|
        if !pigeon_list.include?(name)
          pigeon_list[name] = {key => [key2.to_s]}
        elsif pigeon_list[name].include?(key)
          pigeon_list[name][key] << key2.to_s
        else
          pigeon_list[name][key] = [key2.to_s]
        end
      end
    end
  end
  pigeon_list
end