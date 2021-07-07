require 'pry'

def nyc_pigeon_organizer(data)

  pigeon_list = {}

  data.each do

    |category1, detail1| detail1.each do

          |attrs, name| name.each do

            |each_name|

            if pigeon_list[each_name].nil?

            pigeon_list[each_name] = {}

            pigeon_list[each_name][category1] = []
            pigeon_list[each_name][category1] << attrs.to_s


          elsif pigeon_list[each_name][category1].nil?
            pigeon_list[each_name][category1] = []
            pigeon_list[each_name][category1] << attrs.to_s

          else
            pigeon_list[each_name][category1] << attrs.to_s
            end

        end
      end
    end
    pigeon_list
    end
