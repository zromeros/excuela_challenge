import 'package:flutter/foundation.dart';
import '../models/progress_model.dart';

class ProgressProvider with ChangeNotifier {

  final ProgressModel _model = ProgressModel();

  ProgressModel get model => _model;
  double get value => _model.progressValue;
  void updateProgress(double newValue) {
    _model.updateProgress(newValue);
    notifyListeners();
  }
}