require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

class Kid
  # This includes all of the CLASS methods of the
  # MetaDancing module in this class
  extend FancyDance::ClassMethods
  # This includes all of the INSTANCE methods of the
  # Dance module in this class
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
