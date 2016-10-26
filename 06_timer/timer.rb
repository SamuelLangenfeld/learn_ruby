class Timer
	attr_accessor :seconds
	attr_accessor :time_string
  #write your code here
	def initialize
		@seconds=0
		@time_string="00:00:00"

	end

	def seconds=(num)
		@seconds=num


		str1=num/3600
		num=num-(str1*3600)
		str2=(num-str1)/60
		num=num-(str2*60)
		str3=num


		if (str1<10)
			str1="0"+str1.to_s
		end
		if (str2<10)
			str2="0"+str2.to_s
		end
		if (str3<10)
			str3="0"+str3.to_s
		end
		rstr=str1.to_s+":"+str2.to_s+":"+str3.to_s


		@time_string=rstr
	end



end
