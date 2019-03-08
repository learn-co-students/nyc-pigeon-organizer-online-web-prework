require 'pry'

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

  pigeon_list.each do |pigeon, data|
    data.each do |attribute, attribute_data|
        pigeon_data.each do |key,values|
          if key == :color && attribute == :color
            values.each do |trait, names|
              if names.include?(pigeon)
                attribute_data << trait.to_s
              end
            end
          end
          if key == :gender && attribute == :gender
            values.each do |trait, names|
              if names.include?(pigeon)
                attribute_data << trait.to_s
              end
            end
          end
          if key == :lives && attribute == :lives
            values.each do |trait, names|
              if names.include?(pigeon)
                attribute_data << trait.to_s
              end
            end
          end
          # These three if statements aren't DRY.
          # How could I do something like this?
          #
          # def populate(item)
          #   if key == item && attribute == item
          #     values.each do |trait, names|
          #       if names.include?(pigeon)
          #         attribute_data << trait.to_s
          #       end
          #     end
          #   end
          # end
          # populate(:color)
          # populate(:gender)
          # populate(:lives)
        end
    end
  end

  pigeon_list
end

# pigeon_list.each do |pigeon, pigeon_data|

# end
