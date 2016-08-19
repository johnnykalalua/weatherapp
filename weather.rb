require 'barometer'
puts "Please enter your zipcode."
location = gets
barometer = Barometer.new(location)
weather = barometer.measure

tomorrow = Time.now.strftime('%d').to_i + 1

weather.forecast.each do |forecast|
  day = forecast.starts_at.day

	if day == tomorrow
    dayName = 'Tomorrow'
  else
    dayName = forecast.starts_at.strftime('%A')
  end

  puts dayName + ' there will be ' + forecast.icon + ' with a high temp of ' + forecast.high.f.to_s + ' and a low temp of ' + forecast.low.f.to_s + '.'
end
