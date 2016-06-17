puts "Welcome to Tower of Hanoi"
puts "You must move the stack of disks from one rod to another while never putting a larger disk on a smaller one"
puts "How many Disks would you like to play with? "
discs=gets.chomp.to_i
towers={1=>[],2=>[],3=>[]}
towers[1]=(1..discs).to_a.reverse
final=towers[1].dup




until towers[2] ==final || towers[3]==final
puts "Here is your current board:"
towers.each {|tower_num,tower| puts "Tower #{tower_num}: #{tower}"}

puts "Choose the tower you want to pick from"
choose_from=gets.chomp.to_i

puts "Choose the tower you want to place disc"
place_at=gets.chomp.to_i

if !towers.include?(choose_from) || !towers.include?(place_at)
		puts "That tower does not exist"
		next
	elsif choose_from==place_at
		puts "No point in putting the disk where you got it"
		next
	end

array_choose=towers[choose_from]
array_place=towers[place_at]
	
	if array_choose.none?
		puts "invalid entry"
		next
	elsif array_place.none? ||array_choose.last < array_place.last 
		array_place.push(array_choose.last)
		array_choose.pop
	else
		puts "Invalid"
	end

end


puts "Congrats you completed the Tower of Hanoi!"
