require "pry"

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"],
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"],
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"],
  },
}

def nyc_pigeon_organizer(data)
  new_array = {}
  data.each do |category, data|
    data.each do |attributes, names|
      names.each do |name|
        if new_array[name] == nil
          new_array[name] = {}
          new_array[name][category] = [attributes.to_s]
        elsif new_array[name][category] == nil
          new_array[name][category] = [attributes.to_s]
        else
          new_array[name][category] << attributes.to_s
        end
      end
    end
  end
  new_array
end

#nyc_pigeon_organizer(pigeon_data)
