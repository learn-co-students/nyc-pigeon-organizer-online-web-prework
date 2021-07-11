require 'pry'

def pigeons_data
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

end

def nyc_pigeon_organizer(data)
  # name =>
  #   color  array
  #   gender array
  #   lives  array
  names_hash = get_names_hash(data)
  data.each do |cgl,cgl_data|
    cgl_data.each do |sub_cgl, names|
      names.each do |name|
        names_hash[name][cgl] << sub_cgl.to_s
      end
    end
  end
  return names_hash
end

def get_names_hash(data)
  name_hash = {}
  data.each do |key1,value1|
    value1.each do |key2,names|
      names.each do |name|
        name_hash[name] = {
          :color => [],
          :gender => [],
          :lives => []
        }
      end
    end
  end
  return name_hash
end


# binding.pry
# puts "over"
