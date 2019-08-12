require 'pry'

def get_first_name_of_season_winner(data, season)
  name = nil
  data[season].each do |contestant|
    if contestant['status'] == 'Winner'
      name = contestant['name'].split(' ')
    end
  end
  name[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if occupation == contestant['occupation']
        return contestant['name']
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant['hometown'] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant['hometown'] == hometown
        return contestant['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  data[season].each do |contestant|
    total_age += contestant['age'].to_i
  end
  count = data[season].length
  total_age / count
end
