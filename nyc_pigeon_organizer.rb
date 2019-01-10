require 'pry'
def nyc_pigeon_organizer(data)
  output = {}
  pigeon_names = []
  #create hash with names as keys to data hashees
  data[:gender].each do |gender, names|
    names.each do |name|
      output[name] = {}
      pigeon_names.push(name)
    end
  end
  #find every pigeon's attributes and add them to their hash
  pigeon_names.each do |name|
    data.each do |attribute, attr_hsh|
      attr_hsh.each do |attr_type, names_arr|
        if names_arr.include?(name)
          if output[name].has_key?(attribute)
            output[name][attribute].push(attr_type.to_s)
          else
            output[name][attribute] = [attr_type.to_s]
          end
        end
      end
    end
  end
  puts output
  output
end
