def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    
    contestants.each do |hash|
      if hash[:occupation] == occupation 
        return hash[:name]
        
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0 
  data.each do |season, contestants|
    
    contestants.each do |hash|
      if hash[:hometown] == hometown 
        return count += 1
        
      end   
    end   
  end       
end

def get_occupation(data, hometown)
  arr = []
  data.each do |season, cont_arr|
    cont_arr.each do |hash|
      if hash[:hometown] == hometown 
      arr << hash[:name]

      end 
    end 
  end 
return arr[0]
end

def get_average_age_for_season(data, season)
  holding_arr = []
   
  ssn = season.to_sym
  data.each do |szn, szn_arr|
    if szn == ssn
      szn_arr.each do |hash|
        num = hash[:age].to_f
        
        holding_arr << num




      end
    end 
  end 
  x = holding_arr.size
  y = holding_arr.sum
  return y/x

end
