require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |about, description| #level 1 (color, gender, lives -- purple, male, "subway")
    description.each do |trait, names| #level 2 (purple, male, "subway" -- names of birds)
      names.each do |name| #level 3 (theo and company)
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
          #binding.pry
          pigeon_list[name][about] = [trait.to_s]
        elsif pigeon_list[name][about] == nil
          pigeon_list[name][about] = [trait.to_s]
        else pigeon_list[name][about].push(trait.to_s)
        end
      end
    end
  end
  #binding.pry
  pigeon_list
end
