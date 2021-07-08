def nyc_pigeon_organizer(data)
  pigeon_list = {}
  names = []
  subkeys = data.keys

  subkeys.each do |elem|
    data[elem].each do |key, value|
    names << value
    names.flatten!.uniq!
    end
    end

    names.each do |name|
    pigeon_list[name] = Hash.new {|k, v| k[v]=[]}
    data.each do |attribute, details|
    pigeon_list[name][attribute]
      details.each do |det, arr|
      arr.each do |el|
      pigeon_list[name][attribute]<<det.to_s if el == name
      end

    end
    end

end
pigeon_list
end
