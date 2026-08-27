import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  // লোকাল স্টোরেজে ডেটা সেভ করার ফাংশন
  static Future<void> saveData(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  // লোকাল স্টোরেজ থেকে ডেটা রিড করার ফাংশন
  static Future<String?> getData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }
}
