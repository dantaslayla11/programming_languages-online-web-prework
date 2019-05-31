require "pry"

def reformat_languages(languages)
  
  new_hash = {}
  
  languages.each do |k,v|
    v.each do |k1,v1|
      new_hash[k1] = v1
      puts k1
     
      unless new_hash[k1].keys.include?(:style)
         new_hash[k1][:style] = [k]
      end
      unless new_hash[k1][:style].include?(k)
        new_hash[k1][:style] << k
      end
      
    end 
 end
 new_hash
end



#hash[:my_key] = {second_level_key: "second level value"}