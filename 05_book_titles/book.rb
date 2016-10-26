class Book
    attr_accessor :title
    def title=(name)

        @title = make_title(name)
    end

    def make_title(name)
    	no_capitals=['a','an','the','but','nor','and','or','yet','so','at','around','by','after','along','for','from','of','on','to','without','with','in']
    	warray=name.split()
    	warray[0][0]=warray[0][0].upcase


    	str=warray[0]
    	if (warray.size>1)
    		(warray.size-1).times do |i|
    			

    			if !(no_capitals.include? (warray[i+1]))
    				warray[i+1][0]=warray[i+1][0].upcase
    				
    			end

    			str+=" "+warray[i+1]
    			
    		end

    	end

    	str

    end




end