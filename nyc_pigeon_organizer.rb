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

  pigeon_data.each do |attribute, trait|
    binding.pry
    trait.each do |data, name|
      pigeon_list.each do |pigeon, pigeon_data|
        pigeon_data.each do |new_trait, new_data|
          

        end
      end
    end
  end

  pigeon_list
end
