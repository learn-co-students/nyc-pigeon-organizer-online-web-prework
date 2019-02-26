#pigeon_data = {
#  :color => {
#    :purple => ["Theo", "Peter Jr.", "Lucky"],
#    :grey => ["Theo", "Peter Jr.", "Ms. K"],
#    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#    :brown => ["Queenie", "Alex"]
#  },
#  :gender => {
#    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", #"Lucky"],
#    :female => ["Queenie", "Ms. K"]
#  },
#  :lives => {
#    "Subway" => ["Theo", "Queenie"],
#    "Central Park" => ["Alex", "Ms. K", "Lucky"],
#    "Library" => ["Peter Jr."],
#    "City Hall" => ["Andrew"]
#  }
#}

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_names = []
  pigeon_list = {}
  data.each do |attribute_key, attribute_value|
    attribute_value.each do |prop_key, prop_value|
      prop_value.each do |x|
        if pigeon_names.include?(x) == false 
          pigeon_names.push(x)
        end 
      end 
      pigeon_names.each do |name|
        pigeon_list[name] = {}
        pigeon_list[name][:color] = []
        pigeon_list[name][:gender] = []
        pigeon_list[name][:lives] = []
      end 
    end
  end
  data.each do |attribute_key, attribute_value|
    attribute_value.each do |prop_key, prop_value|
      prop_value.each do |x|
        pigeon_list.each do |name_key, name_value|
          name_value.each do |attr_key, attr_value|
            if attribute_key == :color && attr_key == :color
              if x == name_key
                pigeon_list[name_key][:color] << prop_key.to_s
              end 
            end
            if attribute_key == :gender && attr_key == :gender
              if x == name_key
                pigeon_list[name_key][:gender] << prop_key.to_s
              end 
            end
            if attribute_key == :lives && attr_key == :lives
              if x == name_key
                pigeon_list[name_key][:lives] << prop_key.to_s
              end 
            end
          end 
        end 
      end
    end 
  end   
  pigeon_list
end


