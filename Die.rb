class Die 
  def initialize 
		roll
	end
	
	def roll
		@numbershowing = 1 + rand(6)
	end
	
	def showing 
		return @numbershowing
	end
	
	def cheat die_cheat
		@numbershowing = die_cheat
	end
end

die = Die.new
print 'Drop1: '
puts die.showing
puts 'input cheat'
code = gets.chomp
die.cheat code
print 'Drop2: '
puts die.showing
