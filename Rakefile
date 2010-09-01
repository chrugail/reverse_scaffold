require 'rubygems'  
require 'rake'  
require 'echoe'  

Echoe.new('reverse_scaffold', '0.1.1') do |p|  
  p.description     = "Generate a model from a existing database table"  
  p.url             = "http://github.com/chrugail/reverse_scaffold"  
  p.author          = "Christian Moeckli"  
  p.email           = "chrugail@gmail.com"  
  p.ignore_pattern  = ["tmp/*", "script/*"]  
  p.development_dependencies = []  
end
  
Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }  
