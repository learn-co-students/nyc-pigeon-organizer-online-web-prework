def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |symbol, values|
    values.each do |attribute, names|
      names.each do |element|
        if pigeon_list[element] == nil #if Pigeon not in list
          pigeon_list[element] = {symbol => [attribute.to_s]} #create the hash for the pigeon
          #binding.pry 

        elsif pigeon_list[element][symbol]
          pigeon_list[element][symbol] << attribute.to_s

        else
          temp_hash = {symbol => [attribute.to_s]}
          pigeon_list[element].merge!(temp_hash)  
        end
      end
    end
  end
  return pigeon_list
end