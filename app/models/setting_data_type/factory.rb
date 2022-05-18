module SettingDataType
  Factory = StoreModel.one_of do |json|
    begin
      "SettingDataType::#{json["type"].classify}".constantize
    rescue
      SettingDataType::String
    end
  end
end
