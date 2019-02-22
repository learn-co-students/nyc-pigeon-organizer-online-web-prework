require "pry"

def nyc_pigeon_organizer(data)
  just_names_array = Array.new
  sub_attribute_array = Array.new

  pigeon_list = Hash.new
  
  data.each do |attribute, sub_attribute|
    sub_attribute.each do |key, names|
      just_names_array << names
    end
  end
  
  just_names_array = just_names_array.flatten.uniq

      
  data.each do |attribute, sub_attribute|
    
    just_names_array.each do |name|
      
      if sub_attribute.values.flatten.include?(name)
        sub_attribute_array = []
        
        sub_attribute.each do |key, names|
          
          if names.include?(name)
            # binding.pry
            sub_attribute_array << key.to_s
          end
        end
        # binding.pry
      end
    
        pigeon_list[name] ||= {}
        pigeon_list[name][attribute] = sub_attribute_array
    end
  end
  binding.pry
  pigeon_list
end