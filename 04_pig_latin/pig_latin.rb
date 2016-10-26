def translate(word)
	vowels=['a','e','i','o','u','y']
	
	

	warray=word.split()

	warray.size.times do |i|
		
		
		if !(vowels.include?(warray[i][0]))
			
			while (!(vowels.include?(warray[i][0]))) do
				
				if ((warray[i][0]=='q')&& (warray[i][1]=='u'))
					newChar=warray[i].slice!(0,2)
					warray[i]+=newChar
				
				else
					newChar=warray[i].slice!(0,1)
					warray[i]+=newChar
				end
				
				
			end

			warray[i]+="ay"
		
		
		else
			warray[i]+="ay"


		end



	end


	word=warray[0]
	(warray.size-1).times do |i|
		word+=" "+warray[i+1]
	end
	word
end