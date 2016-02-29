start_time = Time.now
(1..9).each do |w|
	(1..9).each do |d|
		next if d==w
		(0..9).each do |o|
			next if o==d || o==w
			(0..9).each do |t|
				next if t==0 || t==d || t==w
				(1..9).each do |g|
					next if g==t || g==o || g==d || g==w
					(0..9).each do |l|
					next if l==g || l==t || l==o || l==d || l==w
						(0..9).each do |e|
						next if e==l || e==g || e==t || e==o || e==d || e==w
							(0..9).each do |c|
							next if c==e || c==l || c==g || c==t || c==o || c==d || c==w
								(0..9).each do |m|
								next if m==c || m==e || m==l || m==g || m==t || m==0 || m==d || m==w
									
									top_no = w*100000 + w*10000 + w*1000 + d*100 + o*10 + t
									bott_no = g*100000 + o*10000 + o*1000 + g*100 + l*10 + e
									result = d*100000 + o*10000 + t*1000 + c*100 + o*10 + m
									
									if top_no - bott_no == result
										puts "#{top_no} - #{bott_no} = #{result}"
									end
								end
							end
						end
					end
					end
				end
			end
		end
	end
						
	puts "Time to solve = #{Time.now - start_time}"				
	