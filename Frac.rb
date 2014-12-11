#This is a fractions programs that will add, multpily and redicde fractions. It could also turn them into decimals

#Methods
#lcm and gcd
#use like this4.gcd(12) or 12.1(3)
#****************************************************
#all methods should call reduce
def invertFrac(a,b)
	newfrac = b,a
	return newfrac
end
def reduceFrac(a,b)
        div = b.gcd(a)
        num = a/div
        denom = b/div
        newfrac = [num,denom]
        return newfrac
end


def addFrac(a,b)
	frac1 = reduceFrac(a[0],a[1])
	frac2 = reduceFrac(b[0],b[1])
	num = frac1[0]+frac2[0]
	denom = frac1[1]+frac2[1]
	frac = reduceFrac(num,denom)
	return frac
end

def multFrac(a,b)
	num = a[0]*b[0]
	denom = a[1]*b[1]
	frac = reduceFrac(num,denom)
	return frac
end


def subFrac(a,b)
	#subtraction should call addition to do legwork
	frac1 = reduceFrac(a[0],a[1])
        frac2 = reduceFrac(b[0],b[1])
	num = frac1[0]-frac2[0]
	denom = frac1[1]-frac[1]
	frac = reduceFrac(num, denom)
	return frac
end


def divFrac(a,b)
	#should call invert and multiply.
	frac1 = invertFrac(a[0],a[1])
	frac2 = invertFrac(b[0],b[1])
	frac = multFrac(frac1, frac2)
	return frac
end


def toDecimal(a,b)
	dec = a/b
	return dec
end

def toFloat(num)
	num.each do |x|
		x.to_f
	end
	return num
end

#***************************************************
#Prodecural section
#***************************************************

puts "What do you want to do with your fractions? Would you like to add, subtract, multiply, divide. reduce, or convert these fractions?"

choice = gets.chomp

#case choice
	if choice == "add"
		puts "Enter two fractions, like this, one whole fraction at a time, pressing enter between them: a/b."
		frac1 = gets.chomp.split("/")
		frac1 = frac1.collect do |x|
			 x.to_i
		end
		frac2 = gets.chomp.split("/")
		frac2 = frac2.collect do |x|
			 x.to_i
		end
		frac = addFrac(frac1,frac2)
		puts "Your answer is: " + frac.to_s
	elsif choice  == "subtract"
		puts "Enter two fractions, like this, one whole fraction at a time, pressing enter between them: a/b."
		frac1 = gets.chomp.split("/")
		frac1 = frac1.collect do |x|
			 x.to_i
		end
		frac2 = gets.chomp.split("/")
		frac2 = frac2.collect do |x|
			 x.to_i
		end
		frac = subFrac(frac1,frac2)
		puts "Your answer is: " + frac.to_s
	elsif choice == "divide"
		puts "Enter two fractions, like this, one whole fraction at a time, pressing enter between them: a/b."
		frac1 = gets.chomp.split("/")
		frac1 = frac1.collect do |x| 
			 x.to_i
		end
		frac2 = gets.chomp.split("/")
		frac2 = frac2.collect do |x|
			 x.to_i
		end
		frac = divFrac(frac1,frac2)
		puts "Your answer is: " + frac.to_s
	elsif choice ==  "multiply"
		puts "Enter two fractions, like this, one whole fraction at a time, pressing enter between them: a/b."
		frac1 = gets.chomp.split("/")
		frac1 = frac1.collect do |x|
			 x.to_i
		end
		frac2 = gets.chomp.split("/")
		frac2 = frac2.collect do |x|
			 x .to_i
		end
		frac = multFrac(frac1,frac2)
		puts "Your answer is: " + frac.to_s
	elsif choice == "reduce"
		puts "Enter one fraction, like this: a/b."
		frac = gets.chomp.split("/")
		frac = frac.collect do |x|
			 x.to_i
		end
		frac = reduceFrac(frac[0],frac[1])
		puts "Your answer is: " + frac.to_s
	elsif choice == "convert"
		frac = gets.chomp.split("/")
		frac = frac.collect do |x|
			 x.to_i
		end
		frac = toDecimal(frac[0],frac[1])
		puts "Your answer is:" + frac.to_s
end
