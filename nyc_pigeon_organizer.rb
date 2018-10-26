require 'pry'
=begin
def nyc_pigeon_organizer(data)
  new_hash = {}
                
  data.each do |attributes, values|
    values.each do |key, names|
      names.each do |name|
        new_hash[name] ||= {}
        new_hash[name][attributes] ||= []
        new_hash[name][attributes].push(key.to_s)
      end
    end
  end
  new_hash
  binding.pry
end
=end


def nyc_pigeon_organizer(data)
  new_hash = {}
  
  data.each do |attribute, values|
    values.each do |key, names|
      names.each do |name|
        new_hash[name] ||= {}
        new_hash[name][attribute] ||= []
        new_hash[name][attribute].push("#{key}")
      end
    end
  end
  new_hash
end
