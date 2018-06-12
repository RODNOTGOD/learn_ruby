#write your code here
def add a, b
	a + b
end

def subtract a, b
	a - b
end

def sum collection
	sum = 0
	collection.each { |item|
		sum += item
	}
	sum
end

def multiply(*args)
	args.reduce(:*)
end

def power base, power
	base**power
end

def factorial n
	(n < 2) ? 1 : n * factorial(n - 1)
end
