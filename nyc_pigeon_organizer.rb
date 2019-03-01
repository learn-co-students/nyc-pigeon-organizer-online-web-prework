require "pry"

def nyc_pigeon_organizer(data)

  t_hash = {}

  data.each do |attribute, value|
    value.each do |value, names|
      names.each do |name|
        t_hash[name] ||= {}
        t_hash[name][attribute] ||= []
        t_hash[name][attribute] << value.to_s
      end
    end
  end
  #binding.pry
  t_hash
end
