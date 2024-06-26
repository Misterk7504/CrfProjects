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

  List<String> _Catgeory = [];
  List<String> get Catgeory => _Catgeory;
  set Catgeory(List<String> value) {
    _Catgeory = value;
  }

  void addToCatgeory(String value) {
    _Catgeory.add(value);
  }

  void removeFromCatgeory(String value) {
    _Catgeory.remove(value);
  }

  void removeAtIndexFromCatgeory(int index) {
    _Catgeory.removeAt(index);
  }

  void updateCatgeoryAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _Catgeory[index] = updateFn(_Catgeory[index]);
  }

  void insertAtIndexInCatgeory(int index, String value) {
    _Catgeory.insert(index, value);
  }

  List<String> _CategoryId = [];
  List<String> get CategoryId => _CategoryId;
  set CategoryId(List<String> value) {
    _CategoryId = value;
  }

  void addToCategoryId(String value) {
    _CategoryId.add(value);
  }

  void removeFromCategoryId(String value) {
    _CategoryId.remove(value);
  }

  void removeAtIndexFromCategoryId(int index) {
    _CategoryId.removeAt(index);
  }

  void updateCategoryIdAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _CategoryId[index] = updateFn(_CategoryId[index]);
  }

  void insertAtIndexInCategoryId(int index, String value) {
    _CategoryId.insert(index, value);
  }

  List<String> _CategoryName = [];
  List<String> get CategoryName => _CategoryName;
  set CategoryName(List<String> value) {
    _CategoryName = value;
  }

  void addToCategoryName(String value) {
    _CategoryName.add(value);
  }

  void removeFromCategoryName(String value) {
    _CategoryName.remove(value);
  }

  void removeAtIndexFromCategoryName(int index) {
    _CategoryName.removeAt(index);
  }

  void updateCategoryNameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _CategoryName[index] = updateFn(_CategoryName[index]);
  }

  void insertAtIndexInCategoryName(int index, String value) {
    _CategoryName.insert(index, value);
  }

  List<String> _CatQuestions = [];
  List<String> get CatQuestions => _CatQuestions;
  set CatQuestions(List<String> value) {
    _CatQuestions = value;
  }

  void addToCatQuestions(String value) {
    _CatQuestions.add(value);
  }

  void removeFromCatQuestions(String value) {
    _CatQuestions.remove(value);
  }

  void removeAtIndexFromCatQuestions(int index) {
    _CatQuestions.removeAt(index);
  }

  void updateCatQuestionsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _CatQuestions[index] = updateFn(_CatQuestions[index]);
  }

  void insertAtIndexInCatQuestions(int index, String value) {
    _CatQuestions.insert(index, value);
  }

  List<int> _CatQuesNum = [];
  List<int> get CatQuesNum => _CatQuesNum;
  set CatQuesNum(List<int> value) {
    _CatQuesNum = value;
  }

  void addToCatQuesNum(int value) {
    _CatQuesNum.add(value);
  }

  void removeFromCatQuesNum(int value) {
    _CatQuesNum.remove(value);
  }

  void removeAtIndexFromCatQuesNum(int index) {
    _CatQuesNum.removeAt(index);
  }

  void updateCatQuesNumAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _CatQuesNum[index] = updateFn(_CatQuesNum[index]);
  }

  void insertAtIndexInCatQuesNum(int index, int value) {
    _CatQuesNum.insert(index, value);
  }

  List<String> _CatAnswers = [];
  List<String> get CatAnswers => _CatAnswers;
  set CatAnswers(List<String> value) {
    _CatAnswers = value;
  }

  void addToCatAnswers(String value) {
    _CatAnswers.add(value);
  }

  void removeFromCatAnswers(String value) {
    _CatAnswers.remove(value);
  }

  void removeAtIndexFromCatAnswers(int index) {
    _CatAnswers.removeAt(index);
  }

  void updateCatAnswersAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _CatAnswers[index] = updateFn(_CatAnswers[index]);
  }

  void insertAtIndexInCatAnswers(int index, String value) {
    _CatAnswers.insert(index, value);
  }

  List<int> _CatAnswersNum = [];
  List<int> get CatAnswersNum => _CatAnswersNum;
  set CatAnswersNum(List<int> value) {
    _CatAnswersNum = value;
  }

  void addToCatAnswersNum(int value) {
    _CatAnswersNum.add(value);
  }

  void removeFromCatAnswersNum(int value) {
    _CatAnswersNum.remove(value);
  }

  void removeAtIndexFromCatAnswersNum(int index) {
    _CatAnswersNum.removeAt(index);
  }

  void updateCatAnswersNumAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _CatAnswersNum[index] = updateFn(_CatAnswersNum[index]);
  }

  void insertAtIndexInCatAnswersNum(int index, int value) {
    _CatAnswersNum.insert(index, value);
  }

  List<int> _CatRiskNum = [];
  List<int> get CatRiskNum => _CatRiskNum;
  set CatRiskNum(List<int> value) {
    _CatRiskNum = value;
  }

  void addToCatRiskNum(int value) {
    _CatRiskNum.add(value);
  }

  void removeFromCatRiskNum(int value) {
    _CatRiskNum.remove(value);
  }

  void removeAtIndexFromCatRiskNum(int index) {
    _CatRiskNum.removeAt(index);
  }

  void updateCatRiskNumAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _CatRiskNum[index] = updateFn(_CatRiskNum[index]);
  }

  void insertAtIndexInCatRiskNum(int index, int value) {
    _CatRiskNum.insert(index, value);
  }

  List<String> _CatRiskName = [];
  List<String> get CatRiskName => _CatRiskName;
  set CatRiskName(List<String> value) {
    _CatRiskName = value;
  }

  void addToCatRiskName(String value) {
    _CatRiskName.add(value);
  }

  void removeFromCatRiskName(String value) {
    _CatRiskName.remove(value);
  }

  void removeAtIndexFromCatRiskName(int index) {
    _CatRiskName.removeAt(index);
  }

  void updateCatRiskNameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _CatRiskName[index] = updateFn(_CatRiskName[index]);
  }

  void insertAtIndexInCatRiskName(int index, String value) {
    _CatRiskName.insert(index, value);
  }

  List<int> _SucessValue = [];
  List<int> get SucessValue => _SucessValue;
  set SucessValue(List<int> value) {
    _SucessValue = value;
  }

  void addToSucessValue(int value) {
    _SucessValue.add(value);
  }

  void removeFromSucessValue(int value) {
    _SucessValue.remove(value);
  }

  void removeAtIndexFromSucessValue(int index) {
    _SucessValue.removeAt(index);
  }

  void updateSucessValueAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _SucessValue[index] = updateFn(_SucessValue[index]);
  }

  void insertAtIndexInSucessValue(int index, int value) {
    _SucessValue.insert(index, value);
  }

  String _VerifiedOk = '';
  String get VerifiedOk => _VerifiedOk;
  set VerifiedOk(String value) {
    _VerifiedOk = value;
  }
}
