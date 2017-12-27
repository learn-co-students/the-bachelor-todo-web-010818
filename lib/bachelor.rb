def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      name = contestant["name"].split
      winner = name[0]
    end
    winner
  end
  winner
end

def get_contestant_name(data, occupation)
  # code here
  person_with_occupation = ""
  data.each do |season, info|
    info.each do |contestant|
      if contestant["occupation"] == occupation
        person_with_occupation = contestant["name"]
      end
      person_with_occupation
    end
    person_with_occupation
  end
  person_with_occupation
end

def count_contestants_by_hometown(data, hometown)
  # code here
  number = 0
  data.each do |season, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        number +=1
      end
      number
    end
    number
  end
  number
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, info|
    info.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  this_season = data[season]
  this_season.each do |contestant|
    ages << contestant["age"]
  end
  divide = ages.size
  total = 0
  ages.each do |age|
    age = age.to_f
    total += age
    total
  end
  average = total/divide
  average.round(0)
end
