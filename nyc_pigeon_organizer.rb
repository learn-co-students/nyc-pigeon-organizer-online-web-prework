require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_names = []
  new_pigeon_data = {}
  data.each do |data_type, spec|
    spec.each do |da_spec, names|
      names.each do |name|
        unless pigeon_names.include?(name)
          pigeon_names.push(name)
        end 
      end
    end 
  end
  pigeon_names.each do |namae|
    new_pigeon_data[namae] = {color: [], gender: [], lives: []}
    data.each do |data_type, spec|
      spec.each do |da_spec, names|
        if names.include?(namae)
          new_pigeon_data[namae][data_type].push("#{da_spec}")
        end 
      end 
    end
  end
  new_pigeon_data
end