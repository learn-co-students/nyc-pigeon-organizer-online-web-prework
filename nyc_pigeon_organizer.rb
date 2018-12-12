def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  data.each do |catagory, value|
    value.each do |attribute, names|
      names.each do |name|
        if pigeon_list[name] == nil
      pigeon_list[name] = {}
      pigeon_list[name][catagory] = [attribute.to_s]
    elsif pigeon_list[name][catagory] == nil
      pigeon_list[name][catagory] = [attribute.to_s]
    else
      pigeon_list[name][catagory] << attribute.to_s
         end
       end
     end
   end
pigeon_list
end
