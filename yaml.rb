#yaml exercise June 28, 2012
require 'yaml'

def yaml_save object, filename
  File.open filename, "w" do |f|
    f.write(object.to_yaml)
    end #end of the write to file block.
end #end of yaml_save method.

def yaml_load filename
  yaml_string = File.read filename
  YAML::load yaml_string
end #end of yaml_load method




