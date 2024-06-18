import 'package:flutter/material.dart';

class EducationalCardProvider with ChangeNotifier {
  bool _isLiked = false;
  bool _isSaved = false;

  bool get isLiked => _isLiked;
  bool get isSaved => _isSaved;

  void toggleLike() {
    _isLiked = !_isLiked;
    notifyListeners();
  }
  void toggleSave() {
    _isSaved = !_isSaved;
    notifyListeners();
  }
}