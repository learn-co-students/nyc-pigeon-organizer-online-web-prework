require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  data.each do |attribute, att_values|
    #binding.pry
    att_values.each do |keys, name_arrays|
      #binding.pry
      name_arrays.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {color: [], gender: [], lives: []}
          pigeon_list[name][attribute] << keys.to_s
        else
          pigeon_list[name][attribute] << keys.to_s
        end
      end
    end
  end
  #binding.pry
  pigeon_list
end
