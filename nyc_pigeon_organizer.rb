require 'pry'
def nyc_pigeon_organizer(data)
  bitches = {}
  data.each do |keys, color_data|
    color_data.each do |ind_keys, pigeons_chunk|
      pigeons_chunk.each do |pigeon|
        bitches[pigeon] = {}
        bitches[pigeon] = keys
        
        binding.pry
        
      end
    end
  end
  bitches
 #binding.pry
end