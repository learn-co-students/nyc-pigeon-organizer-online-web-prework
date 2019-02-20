
require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |att_cat, att_hash|
    att_hash.each do |att_key, names_array|
      names_array.each do |name|
        pigeon_list[name] ||= {} 
        pigeon_list[name][att_cat] ||= []
        pigeon_list[name][att_cat] << att_key.to_s  
      end
    end   
  end
  pigeon_list
end



# below are all my discarded lines of code as well as discarded
# ideas that were over complicating the method. The most
# important take away is building the new hash step by step
# line by line - lines 9-11 above. And... the use of the logical
# operator || to allow for Theo to have multiple attributes as 
# you iterate through. If pigeon_list[name] is true(exists) or
# if not true (does not exist) then make Pigeon_list[name] exist
#  with a value of an empty hash. This was key.


# My first try at the method below, was doing evrything it was 
# suuposed to do on the first iteration, but on the second time 
# through it was overwriting the new hash with new key value pair.
# I had thought line 42 below was a big find online to converting
# element into a key pointing to an empty value (in this case hash)
# I used it and put my placeholders in the right spots to make the 
# code work, but it was not achieving what I thought. On closer
# inspection, I think maybe, having to do with using .collect
# returning a new collection instead of... I'm not sure, but it
# only worked correctly on the first iteration.

# def nyc pigeon_organizer(data)
#   pigeon_lisy = {}
#   all_names + []
#   data.each do |att_cat, att_hash|
#     att_hash.each do |att_key, names_array|
#       names_array.each do |name|
#         all_names << name
#         pigeon_list = Hash[all_names.collect {|name| [name, {}]}]
#         pigeon_list.each do |name_key, att_value|
#           if name_key == name
#             att_value[att_cat] = [att_key]
#           end 
#         end 
#       end 
#     end 
#   end
#   pigeon_list 
# end

#   all_names = []

#   all_names << name

#   pigeon_list = Hash[all_names.collect {|name| [name, {}]}]

#   pigeon_list.each do |name_key, att_value|
#     if name_key == name


# data[:gender].each do |attribute_key, names_array|

# value = {attribute_category => attribute_key}


# 1. In the pigeon data hash, iterate down to the level 
# of nested data that needs to be accessed - an array of
# pigeon names.

# 2. Iterate to and use :gender => {} because all pigeon 
# names exist in :male [] and :female [] and are not 
# repeated.

# Added a step above. Combined (<< each into new [] - lines)
# all pigeons in :male and :female arrays into new
# all_names [] in order to apply line 15 to all pigeons.

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

# from line above: 
# pigeon_list = Hash[all_names.collect {|name| [name, ""]}]

# 4. Now... 