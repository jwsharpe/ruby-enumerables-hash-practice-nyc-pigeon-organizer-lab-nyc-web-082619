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
  return name_hash
end

  