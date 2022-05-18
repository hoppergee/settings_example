class Setting < ApplicationRecord

  enum value_type: %i[integer string float decimal]

  serialize :value, JSON

  def value
    type_base_name = value_type.classify
    type_klass = "ActiveRecord::Type::#{type_base_name}".constantize
    type_caster = type_klass.new
    type_caster.cast(super)
  end

end
