def sum_of_divisors(n: int) -> int:
    local_array = []
    for i in range(1, n + 1):
        if n % i == 0:
            local_array.append(i)
    return sum(local_array)


def main() -> None:
    print(sum_of_divisors(6))
    print(sum_of_divisors(10))
    print(sum_of_divisors(12))
    print(sum_of_divisors(5))


if __name__ == '__main__':
    main()

# sumOfDivisors(6) => 12
