import 'package:shared_preferences/shared_preferences.dart';
class PrefManager {
  String kIsLogin = "isLogin";
  String kToken = "token";
  String kUserID = "userID";

  SharedPreferences preferences;
  PrefManager(this.preferences);
  //for Bloc.Bloc.login
  set isLogin(bool value) => preferences.setBool(kIsLogin, value);
  bool get isLogin => preferences.getBool(kIsLogin) ?? false;
  set token(String? value) => preferences.setString(kToken, value ?? "");
  String? get token => preferences.getString(kToken);
  set userId(String? value) => preferences.setString(kUserID, value ?? "");
  String? get userID => preferences.getString(kUserID);
  void logout() => preferences.clear();
}
