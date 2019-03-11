require "pry"

def nyc_pigeon_organizer(data)

  pigeon_names = data.map {|category, attributes|
    attributes.map {|attribute, pigeons| pigeons}
  }.flatten.uniq!

  pigeon_list = {}
  pigeon_names.each {|pigeon| pigeon_list[pigeon] = {}
  }

  pigeon_list.each {|pigeon, pigeon_data|
    data.map {|category, attributes|
      attributes.map {|attribute, pigeons|
        if pigeons.include?(pigeon)
          if pigeon_list[pigeon][category].class == Array
            pigeon_list[pigeon][category] << attribute.to_s
          else
           pigeon_list[pigeon][category] = [attribute.to_s]
          end
        end
      }
    }
  }

end
