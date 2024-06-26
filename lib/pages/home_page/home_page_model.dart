import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (AuditTest)] action in HomePage widget.
  ApiCallResponse? categoryItems;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Backend Call - API (AuditTest Questions)] action in DropDown widget.
  ApiCallResponse? catQuestions;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Backend Call - API (AuditTest Answers)] action in DropDown widget.
  ApiCallResponse? catAnswers;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Stores action output result for [Backend Call - API (AuditTest RiskCat)] action in DropDown widget.
  ApiCallResponse? catRiskMenu;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // Stores action output result for [Backend Call - API (AuditPost)] action in Button widget.
  ApiCallResponse? riskCatPost;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
