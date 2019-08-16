require 'pry'
def nyc_pigeon_organizer(data)
    new_hash ={}
  data.each do |key, value_hash|
    value_hash.each do |tags, names|
      names.each do |name|
        new_hash[name] ||= {}
        new_hash[name][key] ||= []
        new_hash[name][key] << tags.to_s
      end
    end
  end
  new_hash
end
end