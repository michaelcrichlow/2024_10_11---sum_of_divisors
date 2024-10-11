package test

import "core:fmt"
print :: fmt.println

main :: proc() {

	print(sum_of_divisors(6))
	print(sum_of_divisors(10))
	print(sum_of_divisors(12))
	print(sum_of_divisors(5))
}


sum_of_divisors :: proc(n: int) -> int {
	local_array: [dynamic]int
	defer delete(local_array)

	for i in 1 ..< n + 1 {
		if n % i == 0 do append(&local_array, i)
	}

	total := sum_iterable(local_array[:])
	return total
}
