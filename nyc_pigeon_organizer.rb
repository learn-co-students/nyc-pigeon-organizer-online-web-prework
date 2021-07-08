require 'pry'

def nyc_pigeon_organizer(data)
    pigeon_list = {}
 data.each do |trait, trait_list|
    trait_list.each do |specified_trait,names|
        names.each do |pigeon_name|
            pigeon_list[pigeon_name] ||= {}
            pigeon_list[pigeon_name][trait] ||= []
            pigeon_list[pigeon_name][trait] << specified_trait.to_s
        end
    end
end
pigeon_list
end
