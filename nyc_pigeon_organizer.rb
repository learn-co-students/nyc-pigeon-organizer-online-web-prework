# consider refactoring using #each_with_object as well as ||=

require 'pry'

def populate(item, pigeon_list, pigeon_data)
  pigeon_list.each do |pigeon, data|
    data.each do |attribute, attribute_data|
        pigeon_data.each do |key,values|
          if key == item && attribute == item
            values.each do |trait, names|
              if names.include?(pigeon)
                attribute_data << trait.to_s
              end
            end
          end
        end
    end
  end
end

def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {}
  pigeon_data.each do |attribute, trait|
    trait.each do |data, name|
      name.each do |pigeon|
        if !pigeon_list.keys.include?(pigeon)
          pigeon_list[pigeon] = {}
        end
      end
    end
  end

  pigeon_data.each do |attribute, trait|
    pigeon_list.each do |pigeon, data|
      data[attribute] = [] if attribute == :color
      data[attribute] = [] if attribute == :gender
      data[attribute] = [] if attribute == :lives
    end
  end

  populate(:color, pigeon_list, pigeon_data)
  populate(:gender, pigeon_list, pigeon_data)
  populate(:lives, pigeon_list, pigeon_data)

  pigeon_list
end
