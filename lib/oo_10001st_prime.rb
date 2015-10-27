# Implement your object-oriented solution here!
class Prime

  def initialize(nthprime)
    @nthprime = nthprime
  end

  def number
    nthprime = 0
    counter = 2

    until nthprime == @nthprime
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

end
