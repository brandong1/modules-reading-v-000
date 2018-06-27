require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer # If we use include keyword, we allow our classes to use all of the methods of the included module as instance methods.
  # include Dance
  # extend MetaDancing

  # We refer to the name-spaced modules or classes with ::. This syntax references the parent and child relationship of the nested modules.
  extend FancyDance::ClassMethods # extend is used to add functionality to our classes via CLASS methods
  include FancyDance::InstanceMethods # include is used to add functionality to our classes via INSTANCE methods.


  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
