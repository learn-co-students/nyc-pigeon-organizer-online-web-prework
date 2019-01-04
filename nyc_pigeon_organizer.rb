require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list={}
  data.each do  |pigeon_attribute,key|
    key.each do   |key, names|
      names.each  do |bird_name|
         pigeon_list[bird_name] ||= {}
         pigeon_list[bird_name][pigeon_attribute] ||= []
          #  binding.pry

          pigeon_list[bird_name][pigeon_attribute] << key.to_s

        #binding.pry
      end
    end
  end
  return pigeon_list
end
