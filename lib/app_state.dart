import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _currentPlan = '';
  String get currentPlan => _currentPlan;
  set currentPlan(String value) {
    _currentPlan = value;
  }

  int _timePeriod = 0;
  int get timePeriod => _timePeriod;
  set timePeriod(int value) {
    _timePeriod = value;
  }

  String _selectedAvatar =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/project-sola-ris-a2yh07/assets/zeogy6pd6p6i/GreenBoy.png';
  String get selectedAvatar => _selectedAvatar;
  set selectedAvatar(String value) {
    _selectedAvatar = value;
  }
}
