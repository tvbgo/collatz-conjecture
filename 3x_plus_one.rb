
p "Insert a number to test how many steps it takes to get to 1 using the Collatz Conjecture"
@number = gets.chomp.to_f

@processed = @number
@counter = 0

if @processed != 0

	while @processed != 1 do
		p " Step: #{@counter} - Value: #{@processed}"
		if @processed % 2 == 0
			@processed = @processed / 2
		else
			@processed = (@processed * 3) + 1
		end
		@counter += 1
	end

puts "Total Steps: #{@counter}"

else
	puts "Why would you even try this out with 0? ;( "
end