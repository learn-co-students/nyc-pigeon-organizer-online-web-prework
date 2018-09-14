def nyc_pigeon_organizer(data)
  ret = {}
  data.each {|attr, value_hash|
    attr
    value_hash.each {|value, name_list|
      value
      name_list.each {|name|
        pige = (ret[name] ||= {})
        pige[attr] ||= []
        pige[attr] << value.to_s
      }
    }
  }
  ret
end
