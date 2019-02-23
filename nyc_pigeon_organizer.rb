require 'pry'

#pigeon_data = {
#  :color => {
#    :purple => ["Theo", "Peter Jr.", "Lucky"],
#    :grey => ["Theo", "Peter Jr.", "Ms. K"],
#    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#    :brown => ["Queenie", "Alex"]
#  },
#  :gender => {
#    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
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
  pigeon_list = {}
  data.each do |key, value_hash|
    value_hash.each do |value, birds|
      birds.each do |bird|
      #binding.pry
      pigeon_list[bird] = {} unless pigeon_list[bird]
      pigeon_list[bird][key] = [] unless pigeon_list[bird][key]
      pigeon_list[bird][key] << value.to_s
      end
    end
  end
  pigeon_list
end
