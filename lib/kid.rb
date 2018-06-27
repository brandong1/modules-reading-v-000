require_relative './dance_module.rb'
require_relative './class_methods_module.rb'

class Kid

  include Dance # To lend our two classes all of the methods of the Dance module, we use the include keyword

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
