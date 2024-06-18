class ProgressModel {
  double progressValue;

  ProgressModel({
    this.progressValue = 0.5,
  });

  void updateProgress(double newValue) {
    progressValue = newValue.clamp(0.0, 1.0);
  }
}