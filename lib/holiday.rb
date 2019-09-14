require 'pry'

 holiday_hash = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring].each do |holiday, supplies|
  supplies << supply
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].map do |holiday, supplies|
  supplies
end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seasons, holidays|
   puts "#{seasons.capitalize}:"
   
   holidays.each do |holidays, supplies|
   puts "#{holidays.to.s.split('_').map {|word|word.capitalize}.join (' ')}: #{supplies.join(', ')}"
   binding.pry
   end
 end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







