module SettingDataType
  class Float
    include StoreModel::Model

    attribute :type, default: :float
    attribute :value, :float
  end
end