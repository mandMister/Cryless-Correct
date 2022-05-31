# Program Structure

## Main function

Correct enforces the usage of a main function. For this a function is defined with the return type `none`. An array of strings (launch arguments) is passed to the main function.

```cpp
fn main(var<str[]> args) -> none
{
}
```

By default, the main function and therefore also the program exits with code `0` (success). Additionally the program may be exited successfully at any point with the `exit_sucess()`, or with a failure `1` using the `exit_failure()` function.

# Built-in Functions

## Console I/O-Functions

### `print`()

### `read`()

## Math Functions

### `sin, cos, tan, asin, acos, atan, log, ln, exp, ...`

## Random

### `rand(), rand_range()`

## Cast

```cpp
var<float> f = 3.1415981;
var<int> d = <int>(f); // 3
var<str> s = <str>(f); // "3.1415981"
```

# Built-in Types

## Array

```cpp

var<int[]> arr;

append(&arr, 2);
delete(&arr, 4);
clear(&arr);
last(&arr);
len(&arr);

print(arr[0]);

ptr<int[]> ptr = &arr;

fn shuffle(ptr<int[]> a) -> none
{
    ...
}
```

## File

```cpp
var<file> f;

f = open("somefile.csv", "rw");

var<str> s = <str>(f);
var<str[]> s_list = split(&s, '\n');

append(&f, "Hello World");

close(&f);
```

## String

```cpp
var<str> s = "Hello World     ";

var<str[]> split_s = split(&s, ' ');

s = trim(&s);
print(s); // -> "Hello World"
```

## Bool

```cpp
var<bool> b = false;

while (!b)
{
    if (/* whatever */)
    {
        b = true;
    }
}
```

# Variables and Pointer

## Variables

Variables are defined using `var<type>`. It's value can be accessed by passing the name of the variable, while it's address can be accessed with `&`.

```cpp
var<int> d = 5;

some_func(d);
some_other_func(&d);
```

## Pointer

Pointers are defined using `ptr<type>`. The address can be accessed by passing the name of the pointer, while it's value can be accessed with `*`.

```cpp
var<int> d = 5;
ptr<int> p = &d;

some_func(p);
some_other_func(*p);
```

# Control Flow

## for loop

```cpp
for (var<float> i = 0 in range(5, 100, 0.5))
{
    ...
}

var<str[]> list = ["Hello", "World"];
for (var<string> str in list)
{
    ...
}
```

## while loop

```cpp
var<int> d = 5;
while (d < 10)
{
    d++;
}

while (true)
{
    
}

var<int> i = 0;
{
    i++;
}
while (i < 20);
```

# Functions

Correct allows the definition of functions with the `fn` keyword. It is given a name, an optional argument list and a return type after the arrow.

```cpp
fn name(var<int> p1, var<char[]> p2) -> var<type>
{
    /* code */
    return value;
}
```

A function may also return `none`.

```cpp
fn name() -> none
{
    /* code */
}
```