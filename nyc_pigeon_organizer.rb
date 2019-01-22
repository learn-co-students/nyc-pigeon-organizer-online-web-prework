require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_org = {}
  pigeon_ary = []

  data.each_value do |stats|
    pigeon_ary << stats.values
  end
  pigeon_ary = pigeon_ary.flatten.uniq

  pigeon_ary.each do |pigeon_name|
    pigeon_org[pigeon_name] = {}
  end


    data.each do |key, stats|
      stats.each do |characteristic, name|
        name.each do |pigeon_name|
          if pigeon_org[pigeon_name].has_key?(key)
            pigeon_org[pigeon_name][key] << characteristic.to_s
          else
            pigeon_org[pigeon_name][key] = [characteristic.to_s]
          end
        end
      end
    end
  pigeon_org
end
