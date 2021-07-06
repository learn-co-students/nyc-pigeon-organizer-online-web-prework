require 'pry'

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
  new_hash = {}
  data.each do |category, category_hash|
    category_hash.each do |type, members|
      members.each do |member|
        #binding.pry
        new_hash[member] = {}
      end
    end
  end
  data.each do |category, category_hash|
    new_hash.each do |member, member_hash|
      new_hash[member][category] = []
    end
  end
  data.each do |category, category_hash|
    category_hash.each do |type, members|
      new_hash.each do |member, member_hash|
        if members.include?(member)
          new_hash[member][category] << type.to_s
        end
      end
    end
  end
  new_hash
  #binding.pry
end