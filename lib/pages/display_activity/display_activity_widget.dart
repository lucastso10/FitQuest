import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'display_activity_model.dart';
export 'display_activity_model.dart';

class DisplayActivityWidget extends StatefulWidget {
  const DisplayActivityWidget({
    super.key,
    this.date,
  });

  final DateTime? date;

  @override
  _DisplayActivityWidgetState createState() => _DisplayActivityWidgetState();
}

class _DisplayActivityWidgetState extends State<DisplayActivityWidget> {
  late DisplayActivityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DisplayActivityModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF2496E9),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.00, -1.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://static-00.iconduck.com/assets.00/arrow-left-icon-2048x1433-le08mlmd.png',
                        width: 50.0,
                        height: 32.0,
                        fit: BoxFit.fill,
                        alignment: const Alignment(-1.00, -1.00),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, -1.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 100.0, 8.0, 0.0),
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle: FlutterFlowTheme.of(context).labelMedium,
                      hintText: 'Nome',
                      hintStyle: FlutterFlowTheme.of(context)
                          .labelLarge
                          .override(
                            fontFamily: 'Readex Pro',
                            color: FFAppState().NomeUnvalid
                                ? FlutterFlowTheme.of(context).error
                                : FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 64.0,
                          ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                    ),
                    style: FlutterFlowTheme.of(context).displayLarge,
                    maxLines: 2,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.00, -1.00),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(30.0, 300.0, 0.0, 0.0),
                  child: Text(
                    'Dia',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 24.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.00, -1.00),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(30.0, 400.0, 0.0, 0.0),
                  child: Text(
                    'Hórario',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 24.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.00, -1.00),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(40.0, 450.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final datePicked1Time = await showTimePicker(
                        context: context,
                        initialTime:
                            TimeOfDay.fromDateTime(getCurrentTimestamp),
                        builder: (context, child) {
                          return wrapInMaterialTimePickerTheme(
                            context,
                            child!,
                            headerBackgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            headerForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            headerTextStyle: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            pickerBackgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            pickerForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            selectedDateTimeBackgroundColor: const Color(0xFF2496E9),
                            selectedDateTimeForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            actionButtonForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            iconSize: 24.0,
                          );
                        },
                      );
                      if (datePicked1Time != null) {
                        safeSetState(() {
                          _model.datePicked1 = DateTime(
                            getCurrentTimestamp.year,
                            getCurrentTimestamp.month,
                            getCurrentTimestamp.day,
                            datePicked1Time.hour,
                            datePicked1Time.minute,
                          );
                        });
                      }
                    },
                    text: valueOrDefault<String>(
                      dateTimeFormat('Hm', _model.datePicked1),
                      'De',
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF2496E9),
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily: 'Readex Pro',
                            color: valueOrDefault<Color>(
                              () {
                                if (FFAppState().comecoUnvalid) {
                                  return FlutterFlowTheme.of(context).error;
                                } else if (FFAppState().comefiUnvalid) {
                                  return FlutterFlowTheme.of(context).error;
                                } else {
                                  return FlutterFlowTheme.of(context).alternate;
                                }
                              }(),
                              Colors.white,
                            ),
                          ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.00, -1.00),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(200.0, 450.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final datePicked2Time = await showTimePicker(
                        context: context,
                        initialTime:
                            TimeOfDay.fromDateTime(getCurrentTimestamp),
                        builder: (context, child) {
                          return wrapInMaterialTimePickerTheme(
                            context,
                            child!,
                            headerBackgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            headerForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            headerTextStyle: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            pickerBackgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            pickerForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            selectedDateTimeBackgroundColor: const Color(0xFF2496E9),
                            selectedDateTimeForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            actionButtonForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            iconSize: 24.0,
                          );
                        },
                      );
                      if (datePicked2Time != null) {
                        safeSetState(() {
                          _model.datePicked2 = DateTime(
                            getCurrentTimestamp.year,
                            getCurrentTimestamp.month,
                            getCurrentTimestamp.day,
                            datePicked2Time.hour,
                            datePicked2Time.minute,
                          );
                        });
                      }
                    },
                    text: valueOrDefault<String>(
                      dateTimeFormat('Hm', _model.datePicked2),
                      'Até',
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF2496E9),
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily: 'Readex Pro',
                            color: valueOrDefault<Color>(
                              () {
                                if (FFAppState().finalUnvalid) {
                                  return FlutterFlowTheme.of(context).error;
                                } else if (FFAppState().comefiUnvalid) {
                                  return FlutterFlowTheme.of(context).error;
                                } else {
                                  return FlutterFlowTheme.of(context).alternate;
                                }
                              }(),
                              FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.00, -1.00),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(30.0, 520.0, 0.0, 0.0),
                  child: Text(
                    'Quantas moedas',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 24.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.00, -1.00),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(40.0, 560.0, 0.0, 0.0),
                  child: FlutterFlowDropDown<int>(
                    controller: _model.dropDownValueController ??=
                        FormFieldController<int>(
                      _model.dropDownValue ??= 100,
                    ),
                    options: List<int>.from([50, 100, 150, 200, 250, 300]),
                    optionLabels: const ['50', '100', '150', '200', '250', '300'],
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue = val),
                    width: 100.0,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).titleSmall,
                    hintText: 'Please select...',
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: const Color(0xFF2496E9),
                    elevation: 2.0,
                    borderColor: const Color(0xFF2496E9),
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 1.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 70.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (_model.textController.text != '') {
                        setState(() {
                          FFAppState().NomeUnvalid = false;
                        });
                      } else {
                        setState(() {
                          FFAppState().NomeUnvalid = true;
                        });
                      }

                      if (_model.datePicked3 != null) {
                        setState(() {
                          FFAppState().semanaUnvalid = false;
                        });
                      } else {
                        setState(() {
                          FFAppState().semanaUnvalid = true;
                        });
                      }

                      if (_model.datePicked1 != null) {
                        setState(() {
                          FFAppState().comecoUnvalid = false;
                        });
                      } else {
                        setState(() {
                          FFAppState().comecoUnvalid = true;
                        });
                      }

                      if (_model.datePicked2 != null) {
                        setState(() {
                          FFAppState().finalUnvalid = false;
                        });
                      } else {
                        setState(() {
                          FFAppState().finalUnvalid = true;
                        });
                      }

                      if (_model.datePicked1! < _model.datePicked2!) {
                        setState(() {
                          FFAppState().comefiUnvalid = false;
                        });
                      } else {
                        setState(() {
                          FFAppState().comefiUnvalid = true;
                        });
                      }

                      if (!(FFAppState().NomeUnvalid ||
                          FFAppState().semanaUnvalid ||
                          FFAppState().comecoUnvalid ||
                          FFAppState().finalUnvalid ||
                          FFAppState().comefiUnvalid)) {
                        setState(() {
                          FFAppState().addToActivities(ActivityStruct(
                            name: _model.textController.text,
                            timeStart: _model.datePicked1,
                            timeEnd: _model.datePicked2,
                            coins: _model.dropDownValue,
                            date: _model.datePicked3,
                          ));
                        });

                        context.pushNamed('HomePage');

                        setState(() {
                          FFAppState().NomeUnvalid = false;
                          FFAppState().semanaUnvalid = false;
                          FFAppState().comecoUnvalid = false;
                          FFAppState().finalUnvalid = false;
                          FFAppState().comefiUnvalid = false;
                        });
                      }
                    },
                    text: 'Criar Atividade',
                    options: FFButtonOptions(
                      width: 250.0,
                      height: 60.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).success,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                fontSize: 40.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.00, -1.00),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(40.0, 350.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final datePicked3Date = await showDatePicker(
                        context: context,
                        initialDate: ((widget.date ?? getCurrentTimestamp) ??
                            DateTime.now()),
                        firstDate: ((widget.date ?? getCurrentTimestamp) ??
                            DateTime.now()),
                        lastDate: DateTime(2050),
                        builder: (context, child) {
                          return wrapInMaterialDatePickerTheme(
                            context,
                            child!,
                            headerBackgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            headerForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            headerTextStyle: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            pickerBackgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            pickerForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            selectedDateTimeBackgroundColor: const Color(0xFF2496E9),
                            selectedDateTimeForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            actionButtonForegroundColor:
                                FlutterFlowTheme.of(context).alternate,
                            iconSize: 24.0,
                          );
                        },
                      );

                      if (datePicked3Date != null) {
                        safeSetState(() {
                          _model.datePicked3 = DateTime(
                            datePicked3Date.year,
                            datePicked3Date.month,
                            datePicked3Date.day,
                          );
                        });
                      }
                    },
                    text: valueOrDefault<String>(
                      dateTimeFormat('d/M', _model.datePicked3),
                      'Dia',
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF2496E9),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: valueOrDefault<Color>(
                                  FFAppState().semanaUnvalid
                                      ? FlutterFlowTheme.of(context).error
                                      : FlutterFlowTheme.of(context).alternate,
                                  Colors.white,
                                ),
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
