def nyc_pigeon_organizer(data)
  # write your code here!
  
  obj = Hash.new{|h,k| h[k] = {color: [], gender: [],lives: []}}

  data.each_with_object(obj) do |(key, value), obj|
    value.each do |item,array|
      array.each do |string| 
      
        obj[string][:color] << item.to_s if key == :color
        obj[string][:gender] << item.to_s if key == :gender
        obj[string][:lives] << item.to_s if key == :lives

      end
    end
  end
end