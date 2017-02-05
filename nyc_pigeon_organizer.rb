def nyc_pigeon_organizer(data)
name_hash = {}
  data.collect do |bird, category|
   category.collect do | subcategory, data|
      data.collect do | item |
          name_hash[item] ||= {}
          name_hash[item][bird] ||= []
          name_hash[item][bird] << subcategory.to_s
          end
        end
      end
    name_hash
  end
