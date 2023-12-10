import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/service_locator.dart';
import '../features/login/data/models/user_model.dart';
import '../features/register/data/models/user_model.dart' as register;

const String USER_CACHE_KEY = 'usercache';

class UserCacheService {
  User? _user;
  User? get user => _user;
  SharedPreferences get sharedPrefs => serviceLocator<SharedPreferences>();
  Future<bool> saveUser(User user) async {
    var map = user.toJson();
    bool saved = await sharedPrefs.setString(USER_CACHE_KEY, jsonEncode(map));
    if (saved) {
      _user = await getUser();
    }
    return saved;
  }

  Future<bool> saveUserRegister(register.User userRegister) async {
    var map = userRegister.toJson();
    bool saved = await sharedPrefs.setString(USER_CACHE_KEY, jsonEncode(map));
    if (saved) {
      _user = await getUser();
    }
    return saved;
  }

  Future<User?> getUser() async {
    User usr;
    var userMap = sharedPrefs.getString(USER_CACHE_KEY);
    if (userMap == null) {
      return null;
    }
    usr = User.fromJson(jsonDecode(userMap));
    _user = usr;
    return usr;
  }

  Future<bool> deleteUser() async {
    _user = null;
    return await sharedPrefs.remove(USER_CACHE_KEY);
  }
}
