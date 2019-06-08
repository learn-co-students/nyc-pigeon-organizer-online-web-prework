require "pry"
def nyc_pigeon_organizer(data)
	hash = {}
	data.each do |attribute,value_hash|
		if attribute == :gender
			value_hash.each do |gender,gender_hash|
				gender_hash.each do |name|
					hash[name] ||= {} #set empty array if hash doesn't have a key, otherwise just take existing key:value
					# hash[name] = {}
          hash[name][:gender] = [gender.to_s]
				end
			end
		end
  end

  data.each do |attribute,value_hash|
    if attribute == :color
      value_hash.each do |color,name_arr|
				# puts "#{color},#{name_arr}"
        name_arr.each do |name|
         	if hash[name]
						hash[name][:color] ||= [] #set empty array if hash doesn't have a key, otherwise just take existing key:value
          	hash[name][:color] << color.to_s
         	end
        end
      end
    end
  end

	data.each do |attribute,value_hash|
    if attribute == :lives
      value_hash.each do |location,name_arr|
				# puts "#{location},#{name_arr}"
        name_arr.each do |name|
         	if hash[name]
						hash[name][:lives] ||= [] #set empty array if hash doesn't have a key, otherwise just take existing key:value
          	hash[name][:lives] << location
         	end
        end
      end
    end
  end
  # binding.pry
	hash
end
