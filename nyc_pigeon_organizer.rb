require "pry"

def nyc_pigeon_organizer(data)
  names=[]
  data[:color].each do |col,name|
    names.push(name).flatten!.uniq!
  end
  pigeon_list={}
  names.map{|i| pigeon_list[i]={}}
  pigeon_list.each do |name,attribute|
    data.each do |attribute1,stats|
      pigeon_list[name][attribute1]=[]
    end
  end
  pigeon_list.each{|name, attribute| attribute.each{|i,j|
    data.each{|attribute1,stats| stats.each{|attribute2,name2|
    if i==attribute1 && name2.include?(name) then j.push(attribute2.to_s) end}}}}
  pigeon_list
end
