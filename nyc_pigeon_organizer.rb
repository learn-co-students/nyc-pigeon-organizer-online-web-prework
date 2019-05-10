require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |trait, variants|
    variants.each do |variant, birds|
      birds.each do |bird|
        if pigeon_list.include?(bird) && pigeon_list[bird].include?(trait)
          pigeon_list[bird][trait] << variant.to_s
        elsif pigeon_list.include?(bird)
          pigeon_list[bird][trait] = []
          pigeon_list[bird][trait] << variant.to_s
        else
          pigeon_list[bird] = {}
          pigeon_list[bird][trait] = []
          pigeon_list[bird][trait] << variant.to_s
        end
      end
    end
  end

  pigeon_list
end
