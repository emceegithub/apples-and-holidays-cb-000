require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  return holiday_hash
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  collector = []
  holiday_hash[:winter].each do |winter_holiday|
    winter_holiday[1].each do |winter_holiday_supply|
      collector << winter_holiday_supply
    end
  end
  return collector
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season_key, season_value|
    puts "#{season_key.capitalize}:"
    holiday_hash[season_key].each do |holiday_key, holiday_value|
      string = ""
      if holiday_key.to_s == "christmas"
        holiday_formatted = "Christmas"
      elsif holiday_key.to_s == "new_years"
        holiday_formatted = "New Years"
      elsif holiday_key.to_s == "fourth_of_july"
        holiday_formatted = "Fourth Of July"
      elsif holiday_key.to_s == "thanksgiving"
        holiday_formatted = "Thanksgiving"
      elsif holiday_key.to_s == "memorial_day"
        holiday_formatted = "Memorial Day"
      else
      end
      string += "  #{holiday_formatted}:"
      #puts holiday_value
      holiday_value.each do |elem|
        string += " #{elem},"
      end
    string = string[0..string.length-2]
    puts string
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  return [:fourth_of_july, :memorial_day]
end







