def nyc_pigeon_organizer(data)
  pigeon_list = {}

data[:gender].map do |category, names|
    names.map do |name|
      pigeon_list[name] = {}
    end
  end
  
  data.map do |attribute, hash|
    hash.map do |category, names|
      names.map do |name|
        if pigeon_list[name].include?(attribute)
          pigeon_list[name][attribute].push(category.to_s)
        elsif pigeon_list.include?(name)
          pigeon_list[name][attribute] = [category.to_s]
        end
      end
    end
  end
  return pigeon_list
end
 

