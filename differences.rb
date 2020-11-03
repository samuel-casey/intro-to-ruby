
=begin
GET A NAME
const getName = (name) => {
  return `hello there:  ${name}`;
};
=end

def get_name (name)
    "hello there: #{name}"
end

# p get_name("Sam")

=begin
SEARCH ARRAY
const searchArray = (array, value) => {
  for(let i = 0; i < array.length-1; i++) {
    if(array[i] == value) {
      return true;
      break;
    }
  }
  return -1;
};
=end

def search_array (array, value)
    0.upto(array.length - 1) do |i|
        if array[i] == value
            return true
        end
    end
    return -1
end

# p search_array([1,2,3], 2)
# p search_array([1,2,3], 4)

=begin
CHECK IF AN ARRAY HAS DUPLICATES
const hasDupes = (arr) => {
  let obj = {};
  for (i = 0; i < arr.length; i++) {
    if(obj[arr[i]]) {
      return true;
    }
    else {
      obj[arr[i]] = true;
    }
  }
  return false;
};
=end

def has_dupes (array)
    obj = {}
    for i in 0...array.length 
        if obj[array[i]] != nil
            return true
        else 
            obj[array[i]] = true
        end
    end
    return false
end

# p has_dupes([1,2,2,3])
# p has_dupes([1,2,3])

=begin
SWAP THE VALUES OF TWO VARIABLES
const swapEm = () => {
  let a = 10;
  let b = 30;
  let temp;

  temp = b;
  b = a;
  a = temp;

  console.log("a is now " + a + ", and b is now " + b);
};
=end

def swap_em
    a = 10
    b = 30
    temp = b
    b = a
    a = temp

    p "a is now #{a}, and b is now #{b}"
end

# swap_em

=begin
MULTIPLY ARRAY
const multiplyArray = (ary) => {
  if (ary.length == 0) { return 1; };

  let total = 1;
  // let total = ary[0];

  for (let i=0; i < ary.length; i++) {
    total = total * ary[i];
  };

  return total;
};
=end

def multiply_array (array)
    unless array.length == 0
        total = 1
        for i in 0...array.length do
            total *= array[i]
        end
    return total
    else
        return 1
    end
end

# p multiply_array([1,2,3])
# p multiply_array([1,2,3,4])

=begin
const nthFibonacciNumber = () => {
  let fibs = [1, 1];
  let num = prompt("which fibonacci number do you want?");

  while (fibs.length < parseInt(num)) {
    let length = fibs.length;
    let nextFib = fibs[length - 2] + fibs[length - 1];
    fibs.push(nextFib);
  }

  console.log(fibs[fibs.length - 1] + " is the fibonacci number at position " + num);
};
=end

def nth_fib
    fibs = [1,1]
    p "Which fibonacci number do you want?"
    num = gets.chomp
    while fibs.length < num.to_i
        length = fibs.length
        next_fib = fibs[length - 2] + fibs[length - 1]
        fibs << next_fib
    end
    p "#{fibs[fibs.length - 1]} is the fibonacci number at position #{num}"
end

# nth_fib
