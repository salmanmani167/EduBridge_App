import '../../../core/app_export.dart';
import 'settings_item_model.dart';

class SettingsModel {
  List<SettingsItemModel> settingsItemList = [
    SettingsItemModel(
        heartrate: ImageConstant.imgTelevision,
        heartRate: "Heart rate",
        heartRateCount: "215bpm"),
    SettingsItemModel(
        heartrate: ImageConstant.imgSettings,
        heartRate: "Calories",
        heartRateCount: "756cal"),
    SettingsItemModel(
        heartrate: ImageConstant.imgThumbsUp,
        heartRate: "Weight",
        heartRateCount: "103lbs")
  ];
}
