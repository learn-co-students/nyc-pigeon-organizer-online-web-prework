
def nyc_pigeon_organizer(data)
  hash = {}
  data.each do |key, value|           # 1st level
    value.each do |char, name|        # 2nd level
      name.each do |bird|             # 3rd level - get bird names
        hash[bird] ||= {}             # birds in hash - check assign operator
        if !hash[bird].has_key?(key)  #check to see if hash doesn't have key, then add key
          hash[bird][key] = []
        end
        hash[bird][key] << char.to_s  #push characteristics to key and change to string
      end
    end
  end
hash
end