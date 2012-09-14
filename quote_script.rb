require 'yaml'

#this method saves an object into yaml format.
def yaml_save object, filename
  File.open filename, "w" do |f|
    f.write(object.to_yaml)
    end #end of the write to file block.
end #end of yaml_save method.

#this method loads yaml files
def yaml_load filename
  yaml_string = File.read filename
  YAML::load yaml_string
end #end of yaml_load method

#checking if the file exists.
  if File.exist?("quotes.txt")
    quote_array = yaml_load 'quotes.txt'
    #if not it gets created, named and saved here.
   else
    quote_array = [] 
    yaml_save quote_array, 'quotes.txt'
  end #end of checking for the file.




input = ' '
#the while loop where we can input quotes until we hit enter on a blank line.
while input != ''
  puts "Input a quote."
  input = gets.chomp
  quote_array << input 
  end #end of the while loop.
  #here we get rid of the '' inputs. That way we can have multiple sessions of inputing quotes.
  quote_array.each do |item| 
    if item == ''
    quote_array.delete(item)
    end #end of the if statement.
  end #end of the each block
 puts quote_array#this is just for testing. 
  
 #then finally we save the file again. 
  yaml_save quote_array, 'quotes.txt'

