require_relative './class_methods_module.rb'
require_relative './dance_module.rb'

class Dancer
  include Dance # If we use include keyword, we allow our classes to use all of the methods of the included module as instance methods.

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
