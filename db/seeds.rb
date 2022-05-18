# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

integer_setting = Setting.create!(key: :integer_example, value_type: :integer, value: 1)
float_setting = Setting.create!(key: :float_example, value_type: :float, value: 1.1)
string_setting = Setting.create!(key: :string_example, value_type: :string, value: "I'm a string")
decimal_setting = Setting.create!(key: :decimal_example, value_type: :decimal, value: BigDecimal('1.223'))

Setting.find_each do |setting|
  puts "Setting - key: #{setting.key}, value: #{setting.value} (#{setting.value.class})"
end