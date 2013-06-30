require 'benchmark'

def fib(x)
	x < 2 ? x : fib(x-1) + fib(x-2)
end

def run_benchmark(n)
	for i in 1..n
		puts "fib(#{i}): " + Benchmark.measure{ fib(i) }.to_s
	end
end

run_benchmark(40)
