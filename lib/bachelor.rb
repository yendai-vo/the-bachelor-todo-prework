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
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
