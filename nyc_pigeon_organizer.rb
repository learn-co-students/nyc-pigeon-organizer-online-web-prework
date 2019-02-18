require 'pry'

def nyc_pigeon_organizer(data)
  
  pigeon_list = {}
  
  data[:gender].each do |gender_key, name_array|
    
#    name_array.each do |name|
      
      pigeon_list = Hash[name_array.collect {|name| [name, ""]}]
        
        
      
#binding.pry

#     end 
  end
end


# 1. In the pigeon data hash, iterate down to the level 
# of nested data that needs to be accessed - an array of
# pigeon names.

# 2. Iterate to and use :gender => {} because all pigeon 
# names exist in :male [] and :female [] and are not 
# repeated.

# 3. Each pigeon name which is an element in :male []  and  
# :female [] needs to be collected and made a key in pigeon
# hash. Can this be done without assigning a value to the key?
# Can I instantiate a hash with just keys in it? 