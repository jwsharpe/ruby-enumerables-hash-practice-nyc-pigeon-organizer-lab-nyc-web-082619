def nyc_pigeon_organizer(data)
  name_hash = Hash.new
  data.each do |attribute, states|
    states.each do |state, names|
      for name in names do
        if(!name_hash[name])
          name_hash[name] = {attribute => nil}
        end
          
        if(!name_hash[name][attribute])
          name_hash[name][attribute] = [state]
        else
          name_hash[name][attribute].push(state)
        end
      end
    end
  end
  pp name_hash
end

'
pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  '
  
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
nyc_pigeon_organizer(pigeon_data)