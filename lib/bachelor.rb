def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |person_hash|
    if person_hash["status"] == "Winner"
      return person_hash["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, people|
    people.each do |persons_hash|
      if persons_hash["occupation"] == occupation
        return persons_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, people|
    people.each do |persons_hash|
      if persons_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, people|
    people.each do |persons_hash|
      if persons_hash["hometown"] == hometown
        return persons_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_total = 0
  num_of_contestants = 0
  data[season].each do |contestant_hash|
    age_total += (contestant_hash["age"]).to_i
    num_of_contestants += 1
  end
  (age_total / num_of_contestants.to_f).round(0)
end
