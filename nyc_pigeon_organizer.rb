def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, attributes), new_hash|
    attributes.each do |value, names|
      names.each do |name|
        new_hash[name] ||= {}
        new_hash[name][key] ||= []
        new_hash[name][key] << value.to_s
      end
    end
  end
end
