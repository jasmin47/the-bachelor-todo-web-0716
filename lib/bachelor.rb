def get_first_name_of_season_winner(data, season)
  full_name = ""
  first_name = ""
  data.each{|season_list, stats_arrays|
    if season_list == season
      stats_arrays.each {|hash|
      hash.each{|type, info|
        if info == "Winner"
          hash.each {|type, info|
            if type == "name"
          full_name = info
        end}
      end
      }
    }
    end
  }
  letter = 0
  while letter < full_name.length
    if full_name[letter] != " "
      first_name << full_name[letter]
    else break
    end
    letter += 1
  end
  first_name
end

def get_contestant_name(data, occupation)
name = ""
  data.each{|season_list, stats_arrays|
      stats_arrays.each {|hash|
      hash.each{|type, info|
        if info == occupation
          hash.each {|type, info|
            if type == "name"
          name << info
        end}
      end
      }
    }
  }
 name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
    data.each{|season_list, stats_arrays|
      stats_arrays.each {|hash|
      hash.each{|type, info|
        if info == hometown
          count += 1
        end
      }
    }
  }
count
end

def get_occupation(data, hometown)
  occupation = []
    data.each{|season_list, stats_arrays|
      stats_arrays.each {|hash|
      hash.each{|type, info|
        if info == hometown
          hash.each {|type, info|
            if type == "occupation"
              occupation << info
            end}
        end
      }
    }
  }
  occupation[0]
end

def get_average_age_for_season(data, season)
age_array = []
  data.each{|season_list, stats_arrays|
    if season_list == season
      stats_arrays.each {|hash|
      hash.each{|type, info|
        if type == "age"
          age_array << info
        end
      }
    }
  end
  }

age = 0
counter = 0
while counter < age_array.length
  age += age_array[counter].to_f
  counter += 1
end
average = age / (age_array.length)
average.round

end
