pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.map do |hash, info|
    info.map do |category, array|
      array.map do |name|
        pigeon_list[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
pigeon_list_keys = pigeon_list.keys 

data[:color].each do |color, bird_name|
  bird_name.each do |names|
    pigeon_list_keys.each do |x|
      if names == x 
        pigeon_list[x][:color] << color.to_s
      end
    end
  end
end
  data[:gender].each do |gender, bird_name|
    bird_name.each do |names|
      pigeon_list_keys.each do |x|
        if names == x 
          pigeon_list[x][:gender] << gender.to_s
        end
      end
    end
  end
  data[:lives].each do |location, bird_name|
    bird_name.each do |names|
      pigeon_list_keys.each do |x|
        if names == x 
          pigeon_list[x][:lives] << location.to_s
        end
      end
    end
  end
  return pigeon_list
end
    