module SettingDataType
  class Decimal
    include StoreModel::Model

    attribute :type, default: :decimal
    attribute :value, :decimal
  end
end