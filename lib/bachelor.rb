require 'pry'

def get_first_name_of_season_winner(data, season)
  first_name = ""

  data.each do |seas, seas_data|
    if season == seas.to_s
      seas_data.each do |contestant_hash|
        if contestant_hash["status"] == "Winner"
          split_string = contestant_hash["name"].split()
          first_name = split_string[0]
        end
      end
    end
  end
  first_name
end

def get_contestant_name(data, occupation)

  name = ""

  data.each do |seas, seas_data|
    seas_data.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        name = contestant_hash["name"]
      end
    end
  end
  name
  #returns the name of the woman who has that occupation
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |seas, seas_data|
    seas_data.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
  #return a counter of the number of contestants who are from that hometown
end

def get_occupation(data, hometown)
  occupation = ""

  data.each do |seas, seas_data|
    seas_data.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        occupation = contestant_hash["occupation"]
        break
      end
    end
  end
  occupation
end


def get_average_age_for_season(data, season)
  ages_array = []

  data.each do |seas, seas_data|
    if season == seas.to_s
      seas_data.each do |contestant_hash|
        ages_array << contestant_hash["age"].to_i
      end
    end
  end

  (ages_array.inject(0, :+) / ages_array.length.to_f).round
end
