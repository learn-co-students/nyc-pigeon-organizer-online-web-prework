require "pry"
def nyc_pigeon_organizer(data)
  hash = {}
  
  data.each do |attribute, values|
    values.each do |value, names|
      names.each do |name|
            if !hash[name] 
              hash[name] = {}
              hash[name][attribute] = []
              hash[name][attribute] << "#{value}"
            elsif !hash[name][attribute]
              hash[name][attribute] = []
              hash[name][attribute] << "#{value}"
            else
              hash[name][attribute] << "#{value}"
            end
         end
      end
    end
  hash
end