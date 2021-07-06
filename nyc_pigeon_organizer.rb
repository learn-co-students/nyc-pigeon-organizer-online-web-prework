def nyc_pigeon_organizer(data)
  bitches = {}
  
  data.each do |keys, color_data|
    color_data.each do |ind_keys, ind_values|
      ind_values.each do |pigeon|
       
          bitches[pigeon] ||= {}
        
          bitches[pigeon][keys] ||= []
            
          bitches[pigeon][keys] << ind_keys.to_s
         
      end
    end
  end
  bitches
end

