require "pry"

def nyc_pigeon_organizer(data)
  pigeons_list = {}

  #attrib_key = label: color or gender or lives
  #attrib_val = ie: purple or male or subway
  #array = array of pigeon names
  #name = pigeon name
  
  data.each do |attrib_key, attrib_hash|
    attrib_hash.each do |attrib_val, array|
      array.each do |pigeon|
        pigeons_list[pigeon] ||= {}
        pigeons_list[pigeon][attrib_key] ||= []
        pigeons_list[pigeon][attrib_key] << attrib_val.to_s
      end    
    end
  end
  pigeons_list
  #binding.pry
end

  