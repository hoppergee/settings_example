module SettingDataType
  class Integer
    include StoreModel::Model

    attribute :type, default: :integer
    attribute :value, :integer
  end
end