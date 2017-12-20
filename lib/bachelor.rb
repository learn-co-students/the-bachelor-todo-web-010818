require 'pry'

def get_first_name_of_season_winner(data, season)
  name = data[season][0]['name'].split(' ')
  name[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, winners_arr|
    winners_arr.each do |winner|
      if occupation == winner['occupation']
        return winner['name']
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, winners_arr|
    winners_arr.each do |winner|
      if winner['hometown'] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, winners_arr|
    winners_arr.each do |winner|
      if winner['hometown'] == hometown
        return winner['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  data[season].each do |winner|
    total_age += winner['age'].to_i
  end
  count = data[season].length
  (total_age/count).round
end
