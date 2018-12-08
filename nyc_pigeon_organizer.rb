require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pidgeons_by_name = {}

  data.each do |property, values_hash|
    values_hash.each do |value, pidgeons|
      pidgeons.each do |pidgeon|
        if !pidgeons_by_name.has_key?(pidgeon)
          pidgeons_by_name[pidgeon] = {}
          pidgeons_by_name[pidgeon][property] = [value.to_s]
        elsif !pidgeons_by_name[pidgeon].has_key?(property)
          pidgeons_by_name[pidgeon][property] = [value.to_s]
        else
          pidgeons_by_name[pidgeon][property] << value.to_s
        end
      end
    end
  end
  pidgeons_by_name
end
