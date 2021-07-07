require 'pry'

def nyc_pigeon_organizer(data)
  new_pigeon_hash = {}
  #binding.pry
  data.each do |pigeon_attribute, attribute_data|
    #binding.pry
    attribute_data.each do |attribute_type, attribute_values|
      #binding.pry
      attribute_values.each do |pigeon_name|
        #binding.pry
        new_pigeon_hash[pigeon_name] ||= {}
        new_pigeon_hash[pigeon_name][pigeon_attribute] ||= []
        new_pigeon_hash[pigeon_name][pigeon_attribute] << attribute_type.to_s
        #binding.pry
      end
    end
  end
  new_pigeon_hash
  #binding.pry
end
