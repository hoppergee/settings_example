class Setting < ApplicationRecord
  attribute :data, SettingDataType::Factory.to_type

  def value
    data.value
  end
end
