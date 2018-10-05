require 'pry'
def nyc_pigeon_organizer(data)
  new_hash = {}
  data[:gender].each do |category, names|
    names.each do |name|
      new_hash[name] = {}
    end
  end
  data.each do|attribute, values|
    values.each do |category, names|
      names.each do |name|
        if new_hash[name].has_key? (attribute)
          new_hash[name][attribute].push (category.to_s)
        elsif new_hash.has_key?(name)
          new_hash[name][attribute] = [category.to_s]
        end
      end
    end
  end
  new_hash
end
