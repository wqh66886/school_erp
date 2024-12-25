import 'package:school_erp_app/core/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  Future<void> setAuthorization(String token) async {
    final preference = await SharedPreferences.getInstance();
    await preference.setString(Constants.authorization, token);
  }

  Future<String> getAuthorization() async {
    final preference = await SharedPreferences.getInstance();
    return preference.getString(Constants.authorization) ?? "";
  }
}
