require 'pry'

def nyc_pigeon_organizer(data)
  data = {}

   data.each do |trait, options|
    options.each do |option, pigeons|
      pigeons.each do |pigeon|
        #binding.pry
        
        if trait == :gender || trait == :lives
          data[pigeon][trait] = option.to_s
        else
          data[pigeon][trait] ||= []
          data[pigeon][trait] = opton.to_s
        end
      end
    end
  end
  binding.pry
end


# organized[pigeon] ||= {}
      #  if trait == :gender || trait == :lives
      #    organized[pigeon][trait] = option.to_s
      #  else
      #    organized[pigeon][trait] ||= []
      #    organized[pigeon][trait] << option.to_s
      #  end