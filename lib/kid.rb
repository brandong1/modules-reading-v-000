require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

class Kid # To lend our two classes all of the methods of the Dance module, we use the include keyword
  # include Dance
  # extend MetaDancing

  # We refer to the name-spaced modules or classes with ::. This syntax references the parent and child relationship of the nested modules.
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods # include is used to add functionality to our classes via instance methods.

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
