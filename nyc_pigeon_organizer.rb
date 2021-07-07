require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  #pigeon_list = {}
  data.each_with_object({}) do |(key, hash), result|
#binding.pry
hash.each do |value, names|
  names.each do |name|
    result[name] ||= {}
    result[name][key] ||= []
    result[name][key] << value.to_s
      end
    end
  end
end
