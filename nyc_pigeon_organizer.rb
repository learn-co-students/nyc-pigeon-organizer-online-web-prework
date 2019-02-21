require "pry"

def nyc_pigeon_organizer(data)
<<<<<<< HEAD
  t_hash = {}

  data.each do |attribute, value|
    value.each do |value, names|
      names.each do |name|
        t_hash[name] ||= {}
        t_hash[name][attribute] ||= []
        t_hash[name][attribute] << value.to_s
      end
    end
  end
  #binding.pry
  t_hash
end
=======
  arr1 = []
  arr2 = []
  arr3 = []
  hsh1 = {}
  hsh2 = {}
  hsh3 = {}
  a_ct = 0 
  b_ct = 0 
  c_ct = 0
  
  data.each do |attribute, value|
    value.each do |group, name|
      #arr1.concat(name) 
      
    end
  end
  #arr1 = arr1.uniq!
  
end
>>>>>>> c4fcd7134c9b8f4d779911f5ad064731619fd92d
