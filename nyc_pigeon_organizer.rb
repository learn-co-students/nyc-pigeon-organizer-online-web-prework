require 'pry'
def nyc_pigeon_organizer(data)
  pigeonList = {}
    data.each do |attribute,info|
      info.each do |trait,pigeons|
        pigeons.each do |pigeon|
          if pigeonList.key?(pigeon)
            pigeonList[pigeon][attribute] << trait.to_s
          else
            pigeonList[pigeon] = {color:[],gender:[],lives:[]}
            pigeonList[pigeon][attribute] << trait.to_s
          end
        end
      end
    end
  pigeonList
end
