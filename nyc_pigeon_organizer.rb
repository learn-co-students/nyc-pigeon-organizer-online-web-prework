require 'pry'
def nyc_pigeon_organizer(data)
  output_data = {}
  
  # pige_names - the names of the pigeons, will be the top level keys
  pige_names = data.values.collect do
    |vals|
    vals.values.flatten
  end
  pige_names = pige_names.flatten.uniq
  # this gives an array of all the pigeon names
  
  # Populate the output data with the names as keys
  pige_names.each do
    |name|
    output_data[name] = {}
  end
  
  # Hash of the categories and their values, e.g. color => grey
  keys_vals = {}
  data.keys.each do
    |category|
    keys_vals[category] = data[category].keys
  end
  # this gives all combinations
  
  # Now check for each combination that each name is in
  keys_vals.keys.each do
    |key|
    keys_vals[key].each do
      |val|
      pige_names.each do
        |name|
        if data[key][val].include?(name)
          # val = val.to_s
          if !output_data[name].key?(key) then output_data[name][key] = [] end
          if !output_data[name][key].include?(val) then output_data[name][key].push(val.to_s) end
        end
      end
    end
  end
  output_data
end