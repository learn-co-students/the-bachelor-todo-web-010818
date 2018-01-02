require 'pry'



def get_first_name_of_season_winner(data, season)

namearr= []
  data.collect do |szn, contest|
    if szn == season
     contest.each_with_index do |hash, index|
      if contest[index].has_value?("Winner")
        namearr << contest[index]["name"]
      end
    end
  end
end
  namearr.join(',').split[0]
end

def get_contestant_name(data, occupation)

  namearr = []
    data.collect do |szn, contest|
      contest.each_with_index do |hash, index|
        if contest[index].has_value?(occupation)
          namearr << contest[index]["name"]
        end
      end
    end
    namearr[0]
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.collect do |szn, contest|
    contest.each_with_index do |hash, index|
      if contest[index].has_value?(hometown)
        i+=1
      end
    end
  end
  i
end

def get_occupation(data, hometown)
  occarr=[]
  data.collect do |szn, contest|
    contest.each_with_index do |hash, index|
      if contest[index].has_value?(hometown)
        occarr << contest[index]["occupation"]
      end
    end
  end
  occarr.first

end

def get_average_age_for_season(data, season)
    numarr =[]
    data.collect do |szn, contest|
      if szn == season
        contest.each_with_index do |hash, index|
          numarr << contest[index]["age"].to_i
        end
      end
    end

    (numarr.reduce(:+)/numarr.size.to_f).round(0)


end
