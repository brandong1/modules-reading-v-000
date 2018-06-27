require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer # If we use include keyword, we allow our classes to use all of the methods of the included module as instance methods.
  # include Dance
  # extend MetaDancing

  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods


  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
