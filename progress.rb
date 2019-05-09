#7 pidgeons
data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# this method returns pigeons as keys on a new hash
def get_pigeons(data)
pigeon_list = {}
pigeons = []
#here it gets all the pigeons as values, then flattens array and removes duplicates. Saves into array.
  data.each  do |key, values|
    values.collect do |desc, pigeon|
    pigeons << pigeon
    pigeons = pigeons.flatten.uniq    
    end 
   end
#iterates in new no duplicates pigeons array to add to new pigeon hash
  pigeons.each do |pigeon|
  pigeon_list[pigeon] = {}  
  end
 pigeon_list
end 

def get_gender(data)
  new_list = get_pigeons(data)
   gender_f = data.fetch(:gender)
    #puts gender
  gender_f.each do |gender_k, pigeons|
    
    new_list.collect do |p_keys, values|  
      if pigeons.include?(p_keys)
        #puts "hi"
        new_list[p_keys][:gender] = ["#{gender_k}"]
        


    end
   end
  puts new_list

 end
end

def nyc_pigeon_organizer(data)
  new_list = get_pigeons(data)
  get_gender(data)
  #puts new_list.keys
  #a_pigeon = []
 
 colors = data.fetch(:color)
    #puts colors
    #colors.each do |key, p_colors |
  


 lives = data.fetch(:lives)   
    #puts lives


 end 
 
  

  





#nyc_pigeon_organizer(data)
get_gender(data)
#get_pigeons(data)

#puts pigeon_list