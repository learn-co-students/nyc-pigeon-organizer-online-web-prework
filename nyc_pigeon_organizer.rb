def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |attribute, attribute_hash|
    attribute_hash.each do |attribute_key, attribute_value|
      attribute_value.each do |name|
        if new_hash.has_key?(name)
          if new_hash[name].has_key?(attribute)
            new_hash[name][attribute] << attribute_key.to_s
          else 
          new_hash[name][attribute] = [attribute_key.to_s]
          end
        else
          new_hash[name] = {attribute => [attribute_key.to_s]}
        end
      end
    end
  end
  new_hash
end
  
