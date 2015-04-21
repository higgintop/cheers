# This method returns the last line
def ask_for_name
	puts "Hello what is your name?"
    gets.chomp.upcase
end

name = ""
while name.empty?
	name = ask_for_name
end

# replace non-letters with empty string
name.gsub!(/[^\w]/, "")

# Loop over the chars in name, and cheer for the name
an_letters = "AEFHILMNORSX"

name.each_char do |letter|
	article = an_letters.include?(letter) ? "an" : "a"
    puts "Give me #{article}...#{letter}"	
end
puts name + "\'s just GRAND!"