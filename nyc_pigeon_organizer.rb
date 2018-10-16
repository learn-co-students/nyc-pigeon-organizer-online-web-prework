def nyc_pigeon_organizer(data)
list = {}
   data.each do |key, value|
    value.each do |x, y|
      y.each do |i|
        if !list.include?(name)
         list[i] = {key => [key2.to_s]}
        elsif pigeon_list[name].include?(key)
          list[i][key] << x.to_s
        else
          list[i][key] = [x.to_s]
        end
      end
    end
  end
list
end 
end 
end
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