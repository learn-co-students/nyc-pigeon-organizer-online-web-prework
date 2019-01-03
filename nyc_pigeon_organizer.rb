require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list={}
  data.each do  |pigeon_attribute,key|
    key.each do   |key, names|
      names.each  do |bird_name|
        if pigeon_list[bird_name] == nil
        pigeon_list[bird_name]= {pigeon_attribute=> key.to_s}

        else
          pigeon_list[bird_name][pigeon_attribute]= [key.to_s]
        end
        #binding.pry
      end
    end
  end
  #return update_hash
end
