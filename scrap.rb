require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  
  data.each do |keys, item|
    
    item.each do |x, y|
      puts y
      binding.pry
    end 
  end
end