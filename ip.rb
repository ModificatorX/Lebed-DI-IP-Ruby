f1=IO.read('access.log')
s=Array.new()
s1=Array.new()
sl=Hash.new("")

result=f1.scan(/^[0-2]{0,1}[0-9]{0,1}[0-9]\.[0-2]{0,1}[0-9]{0,1}[0-9]\.[0-2]{0,1}[0-9]{0,1}[0-9]\.\d*/).uniq
result1=f1.scan(/^([0-2]{0,1}[0-9]{0,1}[0-9]\.[0-2]{0,1}[0-9]{0,1}[0-9]\.[0-2]{0,1}[0-9]{0,1}[0-9])\.\d*/).uniq
s= s | result
s1=s1 | result1
           
for i in s1
    for j in s
		check=Array.new()
		ch=j.to_s.scan(/[0-2]{0,1}[0-9]{0,1}[0-9]/)
		ch1=i.to_s.scan(/[0-2]{0,1}[0-9]{0,1}[0-9]/)
		#print(ch1)
		#puts(ch)
		
		check=ch & ch1
		#print(check.size)
		#puts( ch1.size)
		if check.size==ch1.size
		sl[i]+=j+"   "
		end
	end
end			
for i in sl
	print (i)
	print("\n")
end
#puts(s)
#puts(s1)
