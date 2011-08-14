$: << "../../app"
$: << "/Library/Ruby/Gems/1.8/gems/rhodes-3.0.2/lib/framework/"
require 'rubygems'
gem 'minitest' # ensures you're using the gem, and not the built in MT
require 'minitest/autorun'
gem 'rhodes',"3.0.2"
require 'LocalizationSimplified'
require 'framework/rhom/rhom'
require 'framework/rhom'
require 'framework/rho/rhoapplication'
require 'framework/rho/rhocontroller'
require 'framework/rho/render'
require 'framework/rho/rho'


class TC_settings < MiniTest::Unit::TestCase

def setup
  
  p Gem.available?('rhodes')
  RHO.get_instance().get_app('app')
end
    
    def test_init
   
   
    
    end
    
    
end

  