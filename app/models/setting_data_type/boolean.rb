module SettingDataType
  class Boolean
    include StoreModel::Model

    attribute :type, default: :boolean
    attribute :value, :boolean
  end
end