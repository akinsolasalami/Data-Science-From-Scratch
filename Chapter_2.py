even_numbers = [x for x in range(5) if x % 2 ==0]
print(even_numbers),

## Automated Testing and Assert
def smallest_item(xs):
    return min(xs)

assert smallest_item([10, 20, 5, 40]) == 5
assert smallest_item([1, 0, -1, 2]) == -1

# Object-Oriented Programming
class CountingClicker:
    