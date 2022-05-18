# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

integer = SettingDataType::Integer.new(value: 1)
Setting.create!(key: :integer_example, data: integer)

decimal = SettingDataType::Decimal.new(value: 1.2)
Setting.create!(key: :decimal_example, data: decimal)

string = SettingDataType::String.new(value: '1.2')
Setting.create!(key: :string_example, data: string)

float = SettingDataType::Float.new(value: 1.2)
Setting.create!(key: :float_example, data: float)

Setting.find_each do |setting|
  puts "Setting - key: #{setting.key}, value: #{setting.value} (#{setting.value.class})"
end