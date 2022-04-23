class Task {
  String? title;
  bool checkBoxState;

  Task({required this.title, this.checkBoxState = false});

  void toggleCheckBox() {
    checkBoxState = !checkBoxState;
  }
}
