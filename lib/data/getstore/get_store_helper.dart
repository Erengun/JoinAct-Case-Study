import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'dart:convert';

import '../../models/user.dart';


const String tokenKey = 'token';
const String emailKey = 'email';
const String password = 'password';

@injectable
class GetStoreHelper {
  GetStoreHelper(this.getStorage);
  GetStorage getStorage;

  // save auth token
  Future<void> saveToken(String token) async {
    await getStorage.write(tokenKey, token);
  }

  // get auth token
  String? getToken() {
    return getStorage.read(tokenKey);
  }

  // email and password
  Future<void> saveEmailAndPassword(String email, String password) async {
    getStorage.write(emailKey, email);
    getStorage.write(password, password);
  }

  // save user data
  Future<void> saveUser(User user) async {
    final String userJson = jsonEncode(user.toJson());
    await getStorage.write('user', userJson);
  }

  // get user data
  User? getUser() {
    final String? userJson = getStorage.read('user');
    if (userJson != null) {
      final Map<String, dynamic> userMap =
          jsonDecode(userJson) as Map<String, dynamic>;
      final Map<String, Object?> userMapObject = userMap;
      return User.fromJson(userMapObject);
    } else {
      return null;
    }
  }

  String? getEmail() {
    return getStorage.read(emailKey);
  }

  String? getPassword() {
    return getStorage.read(password);
  }

  void clear() {
    getStorage.erase();
  }
}
