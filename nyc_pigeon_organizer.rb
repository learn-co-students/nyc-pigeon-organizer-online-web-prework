require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons_by_name = {}
  data.each do |cat, att_hash|
    att_hash.each do |att, name_list|
      name_list.each do |name|
        pigeons_by_name[name] ||= {}
        pigeons_by_name[name][cat] ||= []
        pigeons_by_name[name][cat].push att.to_s
      end
    end
  end
  pigeons_by_name
end