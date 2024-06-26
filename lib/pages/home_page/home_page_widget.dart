import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/answers_pop/answers_pop_widget.dart';
import '/pages/cat_pop/cat_pop_widget.dart';
import '/pages/category_pop/category_pop_widget.dart';
import '/pages/highriskpop/highriskpop_widget.dart';
import '/pages/qusetionspop/qusetionspop_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.categoryItems = await AuditTestCall.call(
        pFlag: '80',
        pPageval: '1',
        pParaval: '1',
      );
      FFAppState().CategoryName = AuditTestCall.catName(
        (_model.categoryItems?.jsonBody ?? ''),
      )!
          .toList()
          .cast<String>();
      FFAppState().CategoryId = AuditTestCall.catNum(
        (_model.categoryItems?.jsonBody ?? ''),
      )!
          .map((e) => e.toString())
          .toList()
          .toList()
          .cast<String>();
      setState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF93A2B3),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/rm309-adj-03.jpg',
                ).image,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              50.0, 50.0, 50.0, 50.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            height: MediaQuery.sizeOf(context).height * 0.8,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF7E0E0),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/rm309-adj-03.jpg',
                                ).image,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0xB8FFB5B5),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                  spreadRadius: 1.0,
                                )
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                              border: Border.all(
                                color: const Color(0x67614949),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 54.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF364CF3),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x57414040),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                            spreadRadius: 2.0,
                                          )
                                        ],
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: SelectionArea(
                                            child: Text(
                                          'Risk Categorization',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Sora',
                                                color: Colors.white,
                                                fontSize: 32.0,
                                                letterSpacing: 1.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        )),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.744,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.4,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFFFC2C2),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30.0),
                                        bottomRight: Radius.circular(30.0),
                                        topLeft: Radius.circular(30.0),
                                        topRight: Radius.circular(30.0),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  100.0, 0.0, 100.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'SELECT',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    const TextSpan(
                                                      text: ' - CATEGORY',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController1 ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownValue1 ??= '',
                                                ),
                                                options: List<String>.from(
                                                    FFAppState().CategoryId),
                                                optionLabels:
                                                    FFAppState().CategoryName,
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                      .dropDownValue1 = val);
                                                  _model.catQuestions =
                                                      await AuditTestQuestionsCall
                                                          .call(
                                                    pFlag: '81',
                                                    pPageval:
                                                        _model.dropDownValue1,
                                                    pParaval: '1',
                                                  );
                                                  FFAppState().CatQuestions =
                                                      AuditTestQuestionsCall
                                                              .catQuestName(
                                                    (_model.catQuestions
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!
                                                          .toList()
                                                          .cast<String>();
                                                  FFAppState().CatQuesNum =
                                                      AuditTestQuestionsCall
                                                              .catQuestNum(
                                                    (_model.catQuestions
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!
                                                          .toList()
                                                          .cast<int>();
                                                  setState(() {});

                                                  setState(() {});
                                                },
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.35,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Please select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  100.0, 0.0, 100.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'SELECT',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    const TextSpan(
                                                      text: ' - QUESTIONS',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController2 ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownValue2 ??= '',
                                                ),
                                                options: List<String>.from(
                                                    FFAppState()
                                                        .CatQuesNum
                                                        .map(
                                                            (e) => e.toString())
                                                        .toList()),
                                                optionLabels:
                                                    FFAppState().CatQuestions,
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                      .dropDownValue2 = val);
                                                  _model.catAnswers =
                                                      await AuditTestAnswersCall
                                                          .call(
                                                    pFlag: '82',
                                                    pPageval:
                                                        '${_model.dropDownValue1}~${_model.dropDownValue2}',
                                                    pParaval: '1',
                                                  );
                                                  FFAppState().CatAnswers =
                                                      AuditTestAnswersCall
                                                              .catAnswersName(
                                                    (_model.catAnswers
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!
                                                          .toList()
                                                          .cast<String>();
                                                  FFAppState().CatAnswersNum =
                                                      AuditTestAnswersCall
                                                              .catAnswersNum(
                                                    (_model.catAnswers
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!
                                                          .toList()
                                                          .cast<int>();
                                                  setState(() {});

                                                  setState(() {});
                                                },
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.35,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          lineHeight: 2.0,
                                                        ),
                                                hintText: 'Please select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  100.0, 0.0, 100.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'SELECT',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    const TextSpan(
                                                      text: ' - ANSWERS',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController3 ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options:
                                                    FFAppState().CatAnswers,
                                                onChanged: (val) async {
                                                  setState(() => _model
                                                      .dropDownValue3 = val);
                                                  var shouldSetState = false;
                                                  _model.catRiskMenu =
                                                      await AuditTestRiskCatCall
                                                          .call(
                                                    pFlag: '83',
                                                    pPageval: '2',
                                                    pParaval: '2',
                                                  );
                                                  shouldSetState = true;
                                                  FFAppState().CatRiskNum =
                                                      AuditTestRiskCatCall
                                                              .catRiskNum(
                                                    (_model.catRiskMenu
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!
                                                          .toList()
                                                          .cast<int>();
                                                  FFAppState().CatRiskName =
                                                      AuditTestRiskCatCall
                                                              .catRiskName(
                                                    (_model.catRiskMenu
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!
                                                          .toList()
                                                          .cast<String>();
                                                  setState(() {});
                                                  if (_model.dropDownValue3 ==
                                                      'Verified and OK') {
                                                    FFAppState().VerifiedOk =
                                                        '1';
                                                    setState(() {});
                                                  } else {
                                                    if (_model.dropDownValue3 ==
                                                        'Not Applicable') {
                                                      FFAppState().VerifiedOk =
                                                          '2';
                                                      setState(() {});
                                                    } else {
                                                      if (_model
                                                              .dropDownValue3 ==
                                                          'Irregularity Noticed') {
                                                        FFAppState()
                                                            .VerifiedOk = '3';
                                                        setState(() {});
                                                      } else {
                                                        if (shouldSetState) {
                                                          setState(() {});
                                                        }
                                                        return;
                                                      }

                                                      if (shouldSetState) {
                                                        setState(() {});
                                                      }
                                                      return;
                                                    }
                                                  }

                                                  if (shouldSetState) {
                                                    setState(() {});
                                                  }
                                                },
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.35,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Please select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  100.0, 0.0, 100.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 40.0, 0.0),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'SELECT',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                      const TextSpan(
                                                        text: ' - RISK',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController4 ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownValue4 ??= '',
                                                ),
                                                options: List<String>.from(
                                                    FFAppState()
                                                        .CatRiskNum
                                                        .map(
                                                            (e) => e.toString())
                                                        .toList()),
                                                optionLabels:
                                                    FFAppState().CatRiskName,
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue4 = val),
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.35,
                                                height: 56.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Please select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        100.0, 0.0, 100.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Builder(
                                          builder: (context) => FFButtonWidget(
                                            onPressed: () async {
                                              var shouldSetState = false;
                                              _model.riskCatPost =
                                                  await AuditPostCall.call(
                                                pFlag: '18',
                                                pPageval:
                                                    '${_model.dropDownValue1}~${_model.dropDownValue2}~${FFAppState().VerifiedOk}~${_model.dropDownValue4}',
                                                pParaval: '76',
                                              );
                                              shouldSetState = true;
                                              FFAppState().SucessValue = (_model
                                                          .riskCatPost
                                                          ?.jsonBody ??
                                                      '')
                                                  .toList()
                                                  .cast<int>();
                                              setState(() {});
                                              if (_model.dropDownValue1 !=
                                                      null &&
                                                  _model.dropDownValue1 != '') {
                                                if (_model.dropDownValue2 !=
                                                        null &&
                                                    _model.dropDownValue2 !=
                                                        '') {
                                                  if (_model.dropDownValue3 !=
                                                          null &&
                                                      _model.dropDownValue3 !=
                                                          '') {
                                                    if (_model.dropDownValue4 !=
                                                            null &&
                                                        _model.dropDownValue4 !=
                                                            '') {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child:
                                                                  const CatPopWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child:
                                                                  const HighriskpopWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));

                                                      if (shouldSetState) {
                                                        setState(() {});
                                                      }
                                                      return;
                                                    }

                                                    if (shouldSetState) {
                                                      setState(() {});
                                                    }
                                                    return;
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: const AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () => _model
                                                                    .unfocusNode
                                                                    .canRequestFocus
                                                                ? FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode)
                                                                : FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child:
                                                                const AnswersPopWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));

                                                    if (shouldSetState) {
                                                      setState(() {});
                                                    }
                                                    return;
                                                  }
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: GestureDetector(
                                                          onTap: () => _model
                                                                  .unfocusNode
                                                                  .canRequestFocus
                                                              ? FocusScope.of(
                                                                      context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode)
                                                              : FocusScope.of(
                                                                      context)
                                                                  .unfocus(),
                                                          child:
                                                              const QusetionspopWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));

                                                  if (shouldSetState) {
                                                    setState(() {});
                                                  }
                                                  return;
                                                }
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          const AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child:
                                                            const CategoryPopWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));

                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                                return;
                                              }

                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                            },
                                            text: 'Confirm',
                                            options: FFButtonOptions(
                                              width: 150.0,
                                              height: 50.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFFF83B46),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                              elevation: 2.0,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('HomePage');
                                          },
                                          text: 'Cancel',
                                          options: FFButtonOptions(
                                            width: 150.0,
                                            height: 50.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Colors.white,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color: const Color(0xFF14181B),
                                                      fontSize: 18.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
