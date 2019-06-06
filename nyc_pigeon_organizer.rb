require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.map do |attribute, nestHash|
    nestHash.map do |key, valueArr|
      valueArr.map do |value|
        if pigeon_list.has_key?(value) == false
          pigeon_list[value] = {attribute => [key.to_s]}
        elsif pigeon_list[value].has_key?(attribute) == false
          puts key.to_s
          pigeon_list[value][attribute] = [key.to_s]
        else
          pigeon_list[value][attribute] << key.to_s
        end
      end
    end
  end
  pigeon_list
end
