require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  #collect all pigeon names into an empty hash 
  data.each do |attribute, specific|
    specific.each do |flavor, names|
      names.each do |name|
        pigeon_list[name] = {}
      end 
    end
  end
  #collect pertinant pigeon info 
  pigeon_list.each do |name, value|
    data.each do |attribute, specific|
      specific.each do |flavor, names|
        if names.include?(name)
          if pigeon_list[name].has_key?(attribute)
            pigeon_list[name][attribute] << flavor.to_s
          else
            pigeon_list[name][attribute] = [flavor.to_s]
          end
        end
      end
    end
  end
  #binding.pry
  pigeon_list
end