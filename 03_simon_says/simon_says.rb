#write your code here
def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str,num=2)
	newstr=str
	num2=num-1
	num2.times do 
		newstr+=" "+str
	end
	newstr
end

def start_of_word(str, chars)
	chars-=1
	str[0..chars]
end

def first_word(str)

	str2=str.split()
	str2[0]
end

def titleize(str)

	str2=str.split()
	str2[0][0]=str2[0][0].upcase
	
	
	(str2.size).times do |i|
		
		if (i>0)
			if (str2[i]!="over")&&(str2[i]!="the")&&(str2[i]!="and")
				str2[i][0]=str2[i][0].upcase

			end
		
			
		end

	end

	str=str2[0]
	if (str2.size>1)
		(str2.size-1).times  do |i|
			str+=" "+str2[i+1]
		end
	end
	str
end
