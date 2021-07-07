require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, hashes|
    hashes.each do |attribute2, pigeons|
      pigeons.each do |pigeon|
        #binding.pry
        if new_hash[pigeon] == nil 
          new_hash[pigeon] = {attribute => [attribute2.to_s]}
        elsif new_hash[pigeon][attribute] == nil
          new_hash[pigeon][attribute] = [attribute2.to_s]
        else 
          new_hash[pigeon][attribute] << attribute2.to_s
        
        end 
      end 
    end 
  end 
  new_hash
end