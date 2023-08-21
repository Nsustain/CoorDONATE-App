import 'package:shared_preferences/shared_preferences.dart';

class PrefManager {
  String kIsLoggedin = "isLogin";
  String kAccessToken = "accessToken";
  String kRefreshToken = "refreshToken";
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
  set accessToken(String? value) =>
      preferences.setString(kAccessToken, value ?? "");
  String? get accessToken => preferences.getString(kAccessToken);
  set refreshToken(String? value) =>
      preferences.setString(kRefreshToken, value ?? "");
  String? get refreshToken => preferences.getString(kRefreshToken);
  set userId(String? value) => preferences.setString(kUserID, value ?? "");
  String? get userID => preferences.getString(kUserID);
  void logout() => preferences.clear();
}
