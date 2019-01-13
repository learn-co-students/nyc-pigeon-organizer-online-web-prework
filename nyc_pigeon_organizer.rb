def nyc_pigeon_organizer(data)
  # write your code here!
  
  mydata = {}

  
  data[:color].each do |key, value|
    
    value.each do |att, attvalue|
        if !mydata.has_key?(att)
          mydata[att] = {:color => [key.to_s], :gender => [], :lives => []}
        else
          mydata[att][:color] << key.to_s
        end
    end
  end

  data[:gender].each do |key, value|
    value.each do |att, attvalue|
        if !mydata.has_key?(att)
            mydata[att] = {:color => [], :gender => [key.to_s], :lives => []}
        else
            mydata[att][:gender] << key.to_s
        end
    end
  end

  data[:lives].each do |key, value|
    value.each do |att, attvalue|
        if !mydata.has_key?(att)
            mydata[att] = {:color => [], :gender => [], :lives => [key.to_s]}
        else
            mydata[att][:lives] << key.to_s
        end
    end
  end
  
  return mydata
  
end