require 'pry'


def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  
  # CREATE PIGEON_LIST HASH, WHICH CONTAINS A KEY FOR EACH BIRD.
  data.each do |attribute_type, information|
    information.each do |attribute, birds|
      bird_array = birds.collect { |bird_name| bird_name }
      bird_array.each { |bird_name| pigeon_list[bird_name] = {} }
    end
  end
  
  # ITERATE OVER NEW PIGEON_LIST HASH
  # ITERATE OVER ORIGINAL PIGEON_DATA HASH TO COLLECT ANY INFORMATION
  # CORRESPONDING TO THE GIVEN BIRD
  pigeon_list.each do |bird_name, bird_info|
    data.each do |attribute_type, list_of_attributes|
      list_of_attributes.each do |attribute, birds|
        if birds.include?(bird_name)
          pigeon_list[bird_name][attribute_type] == nil ? pigeon_list[bird_name][attribute_type] = [attribute.to_s] : pigeon_list[bird_name][attribute_type] << attribute.to_s
        end
      end
    end
  end
  pigeon_list
end