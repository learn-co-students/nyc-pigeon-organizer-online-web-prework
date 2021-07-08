require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |trait_hash, trait_keys|
    trait_keys.each do |trait, pigeon_array| 
      pigeon_array.each do |name|
        if pigeon_list.has_key?(name) == false 
          pigeon_list[name] = {} 
        end 
        if pigeon_list[name].has_key?(trait_hash) == false
          pigeon_list[name][trait_hash] = []
        end
        pigeon_list[name][trait_hash] << trait.to_s 
      end 
    end 
  end 
  pigeon_list
end  


def get_names(data)
  pigeon_names = [] 
  data.map do |pigeon_hash, key_hash|
    pigeon_names << key_hash.values  
  end
  return pigeon_names.flatten.uniq
  binding.pry
end 



