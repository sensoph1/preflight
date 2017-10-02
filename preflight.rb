require 'preflight'
input_array = ARGV
preflight = Preflight::Profiles::PDFX1A.new

#first_arg, *the_rest = ARGV
filename = input_array[0].to_s
#first_art.to_s
output =  preflight.check(filename).inspect

if (output.length <3)

	puts "no errors detected for X1A profile"
else
	puts output
end
