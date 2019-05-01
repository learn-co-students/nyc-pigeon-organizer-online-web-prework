require 'pry'
def nyc_pigeon_organizer(data)
  bitches = {}
  data.each do |keys, color_data|
    color_data.each do |ind_keys, ind_values|
      binding.pry
      ind_values.each do |pigeon|
        bitches[pigeon] = []
        
         if color_data.value? pigeon
           bitches[pigeon] << color_data
        
        
        
        binding.pry
        
        end
      end
    end
  end
  bitches
 binding.pry
end