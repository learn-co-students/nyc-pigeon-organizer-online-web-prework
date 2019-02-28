require 'pry'
def nyc_pigeon_organizer(data)
  # get the name as first key of new_hash
  # add the first key from data to new_hash as a key in value_hash
  # add the key of value_hash from data to new_hash as a value in the value_hash
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
