require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons_by_name = {}
  data.each do |cat, att_hash|
    att_hash.each do |att, name_list|
      name_list.each do |name|
<<<<<<< HEAD
        pigeons_by_name[name] ||= {}
        pigeons_by_name[name][cat] ||= []
        pigeons_by_name[name][cat].push att.to_s
=======
        binding.pry
        pigeons_by_name[name][cat] ||= []
        pigeons_by_name[name][cat].push att
>>>>>>> 501dab2d1f8d939d1883a7216379cd9ddff114ea
      end
    end
  end
  pigeons_by_name
end