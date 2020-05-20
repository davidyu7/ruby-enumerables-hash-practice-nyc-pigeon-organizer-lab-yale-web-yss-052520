def nyc_pigeon_organizer(data)
  # write your code here!
  data_t = {}
  data.to_a.each do |attribute, value_list|
    value_list.to_a.each do |value, name_list|
      name_list.each do |name|
        data_t[name] = {} if data_t[name] == nil
        data_t[name][attribute.to_sym] = [] if data_t[name][attribute.to_sym] == nil
        data_t[name][attribute.to_sym] << value.to_s
      end
    end
  end
  data_t
end

# {:color => {:purple => ["Theo", "Peter Jr."]}}
# nyc_pigeon_organizer(pigeon_data)