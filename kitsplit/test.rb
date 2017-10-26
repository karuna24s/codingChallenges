require 'rubygems'
require 'json'

file = File.open("sample.json", "r")
contents = file.read

obj = JSON.parse(contents)

obj["users"].each do |user|
  puts user["id"].to_s + ": " + user["name"]
end

# Print the names of all cat lovers.

puts "******"

obj["users"].each do |user|
  puts user["name"] if (user["catLover"] == true)
end

# Print the average number of pets for all people who are both cat lovers and dog lovers.

puts "******"

numberPets = []

obj["users"].each do |user|
  numberPets << user["numPets"] if (user["catLover"] == true && user["dogLover"] == true)
end

puts numberPets.inject{ |sum, el| sum + el }.to_f / numberPets.size

# How many cat only lovers are there?

puts "******"

catLovers = []

obj["users"].each do |user|
  catLovers << user if (user["catLover"] == true && user["dogLover"] == false)
end

puts catLovers.count

# Print all the pet names separated by a comma, sorted alphabetically, and 
# remove any/all duplicates (Andy, Lulu, Rover, et. al)

puts "******"

nameOfPets = [];

obj["users"].each do |user|
  nameOfPets <<  user["petNames"]
end

puts nameOfPets.flatten.sort.uniq.join(", ")

# Print the names of everyone who has a pet with the same name 
# (for example, if ‘Ken’ and ‘Kris; both have a pet named ‘Evie’, 
# the output should read: “Ken and Kris have a pet named Evie”). 
# Output a line for every pair of humans that share a pet with a same name. 
# There will never be more than 2 pets that share a name, and there will never be more 
# than 2 humans who share a pet with the same name.

puts "******"

obj["users"].each do |user|
  # check each user against every other user
  obj["users"].each do |user2|
    next if user2 == user 
    # `match = user["petNames"] & user2["petNames"]` will assign the result to a variable called match
    # the & method will take 2 arrays and return 1 array with the matching elements (the matching pet names)
    # or an empty array if there are no matches
    if (match = user["petNames"] & user2["petNames"]).count > 0
      user["petNames"].delete(match[0]) # delete the matching petName from each array so they won't be matched again
      user2["petNames"].delete(match[0]) 
      puts user["name"] + " and " + user2["name"] + " have a pet named " + match[0]

    end
  end
 end

