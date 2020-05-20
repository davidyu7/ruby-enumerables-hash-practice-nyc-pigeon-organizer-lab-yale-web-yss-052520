def nyc_pigeon_organizer(data)
  # write your code here!
  data_t = {}
  data.to_a.each do |attribute, value_list|
    value_list.to_a.each do |value, name_list|
      name_list.each do |name|
        puts name if data[name] == nil
        data[name] = {} if data[name] == nil
        data[name][attribute.to_sym] = [] if data[name][attribute.to_sym] == nil
        data[name][attribute.to_sym] << value.to_s
      end
    end
  end
  data_t
end
