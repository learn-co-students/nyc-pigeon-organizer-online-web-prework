require 'pry'
pigeon_list={}
def nyc_pigeon_organizer(data)
  data.each do  |pigeon_attribute,key|
    key.each do   |key, names|
      birds_names=names.join(" ")
pigeon_list[birds_names]= pigeon_attribute
binding.pry
      end
    end
  return update_hash
end
