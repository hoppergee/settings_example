module SettingDataType
  Factory = StoreModel.one_of do |json|
    "SettingDataType::#{json["type"].classify}".constantize
  end
end
