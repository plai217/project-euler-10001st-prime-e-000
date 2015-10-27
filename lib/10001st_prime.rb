# Implement your procedural solution here!
def prime_number_for(num)

  nthprime = 0
  counter = 2

  until nthprime == num
    if prime(counter)
      nthprime += 1
    end
    counter +=1
  end
  counter - 1
end

def prime(num)
  Math.sqrt(num).to_i.downto(2) do |x|
    if num % (x) == 0 
      return false
    end
  end
  return true
end
