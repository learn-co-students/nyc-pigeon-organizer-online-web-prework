require 'pry'

def nyc_pigeon_organizer(data)
  pigion_list = {}
  data.each do |category, data_level_2|
    data_level_2.each do |category_level_2, pigions|
      pigions.each do |pigion|
        pigion_list[pigion] = {:color=>[], :gender=>[], :lives=>[]}
      end
    end
  end
  data[:color].each do |color, pigion_array|
    pigion_array.each do |pigion|
      pigion_list[pigion][:color].push(color.to_s)
    end
  end
  data[:gender].each do |gender, pigion_array|
    pigion_array.each do |pigion|
      pigion_list[pigion][:gender].push(gender.to_s)
    end
  end
  data[:lives].each do |lives, pigion_array|
    pigion_array.each do |pigion|
      pigion_list[pigion][:lives].push(lives)
    end
  end
  pigion_list
end
