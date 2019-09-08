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
  # write your code here!
new_hash = {}
  data.each do |color_gender_lives, info|
    info.each do |keys, name_array|
      name_array.each do |name|
        new_hash[name]= {
          :color => [],
          :gender => [],
          :lives => []}
      end
    end
  end
  data[:color].each do |color_key, color_values|
    color_values.each do |name|
      if data[:color][color_key].include?(name)
      new_hash[name][:color] << color_key.to_s
      end
    end
  end
  data[:gender].each do |gender_key, gender_values|
    gender_values.each do |name|
      if gender_values.include?(name)
        new_hash[name][:gender] << gender_key.to_s
      end
    end
  end
  data[:lives].each do |lives_key, lives_values|
    lives_values.each do |name|
      if lives_values.include?(name)
        new_hash[name][:lives] << lives_key
      end
    end
  end
  new_hash
end
