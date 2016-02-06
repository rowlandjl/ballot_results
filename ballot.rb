#build vote results
vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end

candidates = [
  'Jim Bob',
  'Sally Jane',
  'Billy Joe'
]

#list out vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"

  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end

  puts ""
end

### put your code here
precinct_one = 0
vote_results[0].each do |votes|
  precinct_one += votes
end

puts "Precinct 1 had #{precinct_one} votes."

maximum_votes = vote_results[3].max
candidate_index = vote_results[3].index(maximum_votes)

puts "#{candidates[candidate_index]} won Precinct 4."

jim_bob = 0
sally_jane = 0
billy_joe = 0
vote_results.size.times do |precinct|
  jim_bob += vote_results[precinct][0]
  billy_joe += vote_results[precinct][2]
  sally_jane += vote_results[precinct][1]

end

puts "Jim Bob had #{jim_bob} votes."
puts "Billy Joe had #{billy_joe} votes."
puts "Sally Jane had #{sally_jane} votes."


total_votes = jim_bob + sally_jane + billy_joe
puts "There were #{total_votes} in total."

if billy_joe > jim_bob && billy_joe > sally_jane
  puts "Billy Joe had the most votes (#{billy_joe})"
elsif jim_bob > billy_joe && jim_bob > sally_jane
  puts "Jim Bob had the most votes (#{jim_bob})"
else
  puts "Sally Jane had the most votes (#{sally_jane})"
end
