require 'chefspec'
require 'chefspec/berkshelf'

ChefSpec::Coverage.start! do
  set_template 'json.erb'
end

