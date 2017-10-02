require 'preflight'
input_array = ARGV
preflight = Preflight::Profiles::PDFX1A.new

#first_arg, *the_rest = ARGV
filename = input_array[0].to_s
#first_art.to_s
output =  preflight.check(filename).inspect

if (output.length <3)
	puts
	puts "***File*** " + filename + ": no errors detected for X1A profile"
	puts
else
	puts
	puts "***File*** " + filename + ": the following errors were detected for X1A profile"
	puts
	puts output
end
