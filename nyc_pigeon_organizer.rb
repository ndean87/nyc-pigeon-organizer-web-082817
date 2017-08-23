require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  data.each do |pigeon_attributes, pigeon_data|
    pigeon_data.each do |pigeon_descripters, pigeon_name_array|
      pigeon_name_array.each do |name|
        if !pigeon_hash[name]
          pigeon_hash[name] = {
            :color => [],
            :gender => [],
            :lives => []
          }
        end
        if
          pigeon_hash[name][pigeon_attributes] << pigeon_descripters.to_s
        end
      end
    end
  end
  # data.each do |pigeon_attributes, pigeon_data|
  #   pigeon_data.each do |details, names|
  #     names.each do |name|
  #       pigeon_hash[name][pigeon_attributes] << details
  #     end
  #   end
  # end
  return pigeon_hash
end
