require 'pry'

# pigeon_data = {
#         :color => {
#           :purple => ["Theo", "Peter Jr.", "Lucky"],
#           :grey => ["Theo", "Peter Jr.", "Ms. K"],
#           :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#           :brown => ["Queenie", "Alex"]
#         },
#         :gender => {
#           :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#           :female => ["Queenie", "Ms. K"]
#         },
#         :lives => {
#           "Subway" => ["Theo", "Queenie"],
#           "Central Park" => ["Alex", "Ms. K", "Lucky"],
#           "Library" => ["Peter Jr."],
#           "City Hall" => ["Andrew"]
#         }
#       }

def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |key, value|
    value.each do |attribute, pigeons|
      pigeons.each do |pigeon|
        # binding.pry 
        new_hash[pigeon] ||= {}
        new_hash[pigeon][key] ||= []
        # binding.pry
        new_hash[pigeon][key] << attribute.to_s
      end
    end
  end
  # binding.pry
  new_hash
end

