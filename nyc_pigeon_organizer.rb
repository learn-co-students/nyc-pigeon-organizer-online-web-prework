
require 'pry'

def nyc_pigeon_organizer(data)
  
  pigeon_list = {}
  
  all_names = []
  
  data.each do |att_cat, att_hash|
    
    att_hash.each do |att_key, names_array|
  
      names_array.each do |name|
      
        all_names << name 
     
        pigeon_list = Hash[all_names.collect {|name| [name, {}]}]
          
        pigeon_list.each do |name_key, att_value|
        
          if name_key == name
              
            att_value << [att_cat] = [att_key]
#binding.pry            
                
          end
                
        end 
        
      end
            
    end   
       
  end
  pigeon_list
binding.pry 
end


# data[:gender].each do |attribute_key, names_array|

# value = {attribute_category => attribute_key}


# 1. In the pigeon data hash, iterate down to the level 
# of nested data that needs to be accessed - an array of
# pigeon names.

# 2. Iterate to and use :gender => {} because all pigeon 
# names exist in :male [] and :female [] and are not 
# repeated.

# Added a step above. Combined (<< each into new [] - lines
# 11 & 13) all pigeons in :male and :female arrays into new
#  all_names [] in order to apply line 15 to all pigeons.

# 3. Each pigeon name which is an element in :male []  and  
# :female [] needs to be collected and made a key in pigeon
# hash. Can this be done without assigning a value to the key?
# Can I instantiate a hash with just keys in it? 

# 3. YES, it is "instantiating" a new hash, notice the capitalized
# H in "hash" referring to "class" in the line of code below
# which is "creating" (instantiating) a new "instance" of the 
# class - Hash, also the line of code below instaniates a new 
# hash and collects the elements of an array converting them 
# into keys in the new hash, not existing by themselves, but 
# as key pointing at an empty value, so the elements are 
# turned into a key value pair, but a value that is empty to 
# be added to later.

# from line 15 above: 
# pigeon_list = Hash[all_names.collect {|name| [name, ""]}]

# 4. Now 