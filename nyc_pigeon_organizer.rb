def nyc_pigeon_organizer(data)
  # write your code here!
  data.each_with_object({}) do |(key, h), result|
    h.each do |value, name|
    name.each do |name|
      result[name] ||= {}
      result[name][key] ||= []
      result[name][key].push(value.to_s)
    end
  end
  end
end