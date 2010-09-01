class ReverseScaffoldGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :table_name, :type => :string
  argument :class_name, :type => :string
  

	def reverse_scaffold
		require File.expand_path('config/environment',  Rails.root) unless defined?(Rails)

    classname = class_name.underscore
    classname.capitalize!
		eval "class ::#{classname} < ActiveRecord::Base; set_table_name '#{table_name}' end"
		klass = eval "::#{classname}"
    
    # reverse_scaffold = "rails g scaffold #{classname.chomp('s')} --no-migration "
		reverse_scaffold = "rails g scaffold #{classname.chomp('s')} "
		klass.columns.each do |col|
			reverse_scaffold << col.name + ":" + col.type.to_s + " "
		end

		if options[:pretend]
			puts reverse_scaffold
		else
			system reverse_scaffold
      model = <<-CODE
class #{classname.chomp('s')} < ActiveRecord::Base
  set_table_name '#{table_name}'
end
CODE
			
      File.open(Rails.root + "app/models/#{classname.downcase.chomp('s')}.rb", 'w+') {|f| f.write(model) }
      # delete the migrations file
      migrationsfile = File.expand_path(Rails.root + "db/migrate/[0-9]*_create_#{classname.downcase}.rb")
      Dir.glob(migrationsfile).collect do |file|
        File.delete(file)
      end
    end
	end
	
end
