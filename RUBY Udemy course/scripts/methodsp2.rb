#def prompt (message)
#	print message
#end
#prompt "here it is"
#print "\n"
#prompt "obey"

def curve (arr, points)
	arr.map! {|grade| grade += points}
end
grades = [60,70,80,90]
curve(grades,5)
grades.each {|grade| print grade, " "}