def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  
  data.each do |property, info|
    
    # properties are color, gender and lives
    
    info.each do |key, names|
      
      # key is property value
      
      names.each do |name|
        
        if pigeon_list.has_key?(name) == false
           pigeon_list[name] = {}
        end
        
        if pigeon_list[name].has_key?(property) == false
           pigeon_list[name][property] = []
        end
        
        if pigeon_list[name][property].include?(key) == false 
           key = key.to_s
           pigeon_list[name][property].push(key)
           puts pigeon_list[name][property].length
        end
      end
    end
  end   
  #puts pigeon_list
  pigeon_list
end

