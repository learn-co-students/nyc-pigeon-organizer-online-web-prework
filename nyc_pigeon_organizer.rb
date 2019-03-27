def nyc_pigeon_organizer(hsh)
  pigeon_list = {}
  hsh.each { |trait, data|
    data.each { |k, v|
      v.each { |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][trait] ||= []
        pigeon_list[name][trait] << k.to_s
      }
    }
  }
  pigeon_list
end

