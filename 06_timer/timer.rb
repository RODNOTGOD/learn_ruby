class Timer
	#write your code here
	attr_accessor :seconds

	public

	def initialize(seconds = 0)
		@seconds = seconds
	end

	def time_string
		convert_seconds_to_time
	end

	private

	def convert_seconds_to_time
		seconds = @seconds
		minutes = seconds / 60
		hours = minutes / 60
		minutes %= 60
		seconds %= 60
		"#{hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}"
	end
end
