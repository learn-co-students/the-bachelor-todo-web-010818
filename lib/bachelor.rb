require "pry"

def get_first_name_of_season_winner(data, season)
  contestant_first_name = nil
  # binding.pry
  data.each do |season_key, contestant_data|
    if season_key == season
      contestant_data.each do |contestant_hash|
        # binding.pry
        contestant_hash.each do |attribute, value|
          # binding.pry
          if value.upcase == "WINNER"

            contestant_name_array = contestant_hash["name"].split
            contestant_first_name = contestant_name_array[0]

          end
        end
      end
    end
  end
  contestant_first_name
end

def get_contestant_name(data, occupation)
  contestant_name = nil
  # binding.pry
  data.each do |season_key, contestant_data|
    contestant_data.each do |contestant_hash|
      contestant_hash.each do |attribute, value|
        if value.upcase == occupation.upcase
          contestant_name = contestant_hash["name"]
        end
      end
    end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  count_hometown = 0
  data.each do |season_key, contestant_data|
    contestant_data.each do |contestant_hash|
      contestant_hash.each do |attribute, value|
        if value.upcase == hometown.upcase
          count_hometown += 1
        end
      end
    end
  end
  count_hometown
end

def get_occupation(data, hometown)
  occupations = []
  data.each do |season_key, contestant_data|
    contestant_data.each do |contestant_hash|
      contestant_hash.each do |attribute, value|
        if value.upcase == hometown.upcase
          occupations << contestant_hash["occupation"]
          break
        end
      end
    end
  end
  occupations[0]
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |season_key, contestant_data|
    if season_key.upcase == season.upcase
      contestant_data.each do |contestant_hash|
        ages << contestant_hash["age"].to_i
      end
    end
  end

  ages.flatten!
  sum = 0
  ages.each do |x|
    sum += x
  end
  # binding.pry
  average = sum.to_f / ages.length
  average.round
end
