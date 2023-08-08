import 'package:shared_preferences/shared_preferences.dart';

class PrefManager {
  String kIsLoggedin = "isLogin";
  String kToken = "token";
  String kUserID = "userID";
  String kFirstTimeOpened = "firsttimeopened";

  SharedPreferences preferences;
  PrefManager(this.preferences);
  //for Bloc.Bloc.login
  set isLoggedin(bool value) => preferences.setBool(kIsLoggedin, value);
  bool get isLoggedin => preferences.getBool(kIsLoggedin) ?? false;
  set isFirstTimeOpened(bool value) =>
      preferences.setBool(kFirstTimeOpened, value);
  bool get isFirstTimeOpened => preferences.getBool(kFirstTimeOpened) ?? false;
  set token(String? value) => preferences.setString(kToken, value ?? "");
  String? get token => preferences.getString(kToken);
  set userId(String? value) => preferences.setString(kUserID, value ?? "");
  String? get userID => preferences.getString(kUserID);
  void logout() => preferences.clear();
}
