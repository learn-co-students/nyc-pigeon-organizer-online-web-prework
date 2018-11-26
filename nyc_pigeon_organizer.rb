def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, values|
    values.each do |value, pigeons|
      pigeons.each do |pigeon|
        pigeon_list[pigeon] ||= {}
        pigeon_list[pigeon][attribute] ||= []
        pigeon_list[pigeon][attribute] << value.to_s
      end
    end
  end
  pigeon_list
end
