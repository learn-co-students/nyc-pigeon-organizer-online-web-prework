def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |descriptor, description|
    description.each do |description, pigeons_array|
      pigeons_array.each_entry do |pigeon_name|
        pigeon_list[pigeon_name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  
  data[:color].each do |description, pigeons_array|
    pigeons_array.each do |name|
      if data[:color][description].include?(name)
        pigeon_list[name][:color] << description.to_s
      end
    end
  end
  data[:gender].each do |description, pigeons_array|
    pigeons_array.each do |name|
      if data[:gender][description].include?(name)
        pigeon_list[name][:gender] << description.to_s
      end
    end
  end
  data[:lives].each do |description, pigeons_array|
    pigeons_array.each do |name|
      if data[:lives][description].include?(name)
        pigeon_list[name][:lives] << description.to_s
      end
    end
  end
  pigeon_list
end