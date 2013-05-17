class OrangeTree
  
	def initialize 	
		@treeheight = 0.1
		@treeAge = 0
		@status = 'young tree'
		@numberOfSeeds = 0
	end
	
	def height?
		print 'tree height is : ' + @treeheight.to_s
	end
	
	def age?
		print  'tree age is : ' + @treeAge.to_s
	end
	
	def oneYearPass
		@treeAge += 1
		@treeheight += 0.45
		@numberOfSeeds = @treeAge + (@treeAge * 2)
	end
	
	def status?
		if @treeAge < 10
			return @status
		else
			@status = 'old tree'
		end	
	end 
	
	
	def	countTheOranges
		print 'number of oranges on the tree : ' + @numberOfSeeds.to_s
	end
	
	def	pickAnOrange
		if @numberOfSeeds > 0
			@numberOfSeeds -=1
			puts 'Yammy! Om-nom-nom. '
		else 
			puts 'Is nothing to eat. :( '
		end
	end
	
end



tree = OrangeTree.new
flag = false 

until flag == true
	puts 'Insert command (height, status,age, count- to get information about tree; pick - to get one orange;next year - to switch year; exit - to quit; )'
	command = gets.chomp
	if command == 'exit'
		exit
	end
	
	if command == 'age'
		puts tree.age?
		flag = false 
	end
	
	if command == 'next year'
		tree.oneYearPass
		flag = false 
	end 
	
	if command == 'height'
		puts tree.height?
		flag = false 
	end
	
	if command == 'status'
		puts tree.status?
		flag = false 
	end
	
	if command == 'pick'
		tree.pickAnOrange
		flag = false 
	end
	
	if command == 'count'
		puts tree.countTheOranges
		flag = false 
	end 
	
	puts ' try other command'
	flag = false 
	
end
