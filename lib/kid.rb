require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

class Kid # To lend our two classes all of the methods of the Dance module, we use the include keyword
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


# If you have a module whose methods you would like to be used in another class as instance methods, then you must include the module.

# If you want a module's methods to be used in another class as class methods, you must extend the module.
