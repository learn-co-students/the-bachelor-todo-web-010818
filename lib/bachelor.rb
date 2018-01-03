def get_first_name_of_season_winner(data, season)
  # code here
  winner = ''
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      winner = contestant["name"][0...contestant["name"].index(' ')]
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  # code here
  name = ''
  data.each do |season_no, info|
    info.each do |contestants|
      name = contestants["name"] if contestants["occupation"] == occupation
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season_no, info|
    info.each do |contestants|
      count += 1 if contestants["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  occupations_of_hometown = []
  data.each do |season_no, info|
    info.each do |contestants|
      occupations_of_hometown << contestants["occupation"] if contestants["hometown"] == hometown
    end
  end
  occupations_of_hometown[0]
end

def get_average_age_for_season(data, season)
  # code here
  ages = 0
  no_of_contestants = 0
  data[season].each do |contestant|
    ages += contestant["age"].to_i
    no_of_contestants += 1
  end
  (ages.to_f/no_of_contestants.to_f).round
end
