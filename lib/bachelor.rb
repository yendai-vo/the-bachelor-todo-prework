def get_first_name_of_season_winner(data, season)
  winner_name = ""
  data[season].each { |contestant|
    if contestant["status"] == "Winner"
      winner_name = contestant["name"].split(" ")[0]
    end
  }
  winner_name
end

def get_contestant_name(data, occupation)
  woman_name = ""
  data.each { |season, woman_array|
    woman_array.each { |woman|
      if woman["occupation"] == occupation
        woman_name = woman["name"]
      end
    }
  }
  woman_name
end

def count_contestants_by_hometown(data, hometown)
  woman_count = 0
  data.each { |season, woman_array|
    woman_array.each { |woman|
      if woman["hometown"] == hometown
        woman_count+=1
      end
    }
  }
  woman_count
end

def get_occupation(data, hometown)
  occupation = ""
  data.each { |season, woman_array|
    woman_array.each { |woman|
      if woman["hometown"] == hometown  && occupation == ""
        occupation = woman["occupation"]
      end
    }
  }
  occupation
end

def get_average_age_for_season(data, season)
  total_age = 0
  contestants = 0
  data[season].each {|contestant|
    total_age += contestant["age"].to_i
    contestants += 1
  }
  total_age/contestants+1
end
