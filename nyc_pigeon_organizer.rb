require 'pry'
def nyc_pigeon_organizer(data)
  bitches = {}
  data.each do |keys, color_data|
    color_data.each do |ind_keys, ind_values|
      ind_values.each do |pigeon|
        
        #if !bitches[pigeon]
          bitches[pigeon] = {}
        
        if !bitches[pigeon][keys]
          bitches[pigeon][keys] = []
            
         if !bitches[pigeon][keys].include? ind_keys.to_s
           bitches[pigeon][keys] << ind_keys.to_s
            
          end
        end
      end
    end
  end
  bitches
  binding.pry
end

