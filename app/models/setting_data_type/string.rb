module SettingDataType
  class String
    include StoreModel::Model

    attribute :type, default: :string
    attribute :value, :string
  end
end