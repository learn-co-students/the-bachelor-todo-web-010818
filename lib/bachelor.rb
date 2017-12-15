def get_first_name_of_season_winner(data, season)
  result = nil
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      result = contestant["name"].split(" ")[0]
    end
  end
  result
end

def get_contestant_name(data, occupation)
  result = nil
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        result = contestant["name"]
      end
    end
  end
  result
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end

end

def get_average_age_for_season(data, season)
  sum = 0
  count = 0
  data[season].each do |contestant|
    sum += contestant["age"].to_f
    count += 1
  end
  (sum/count).round
end
