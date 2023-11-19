import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'display_day_model.dart';
export 'display_day_model.dart';

class DisplayDayWidget extends StatefulWidget {
  const DisplayDayWidget({
    super.key,
    required this.dia,
  });

  final DateTime? dia;

  @override
  _DisplayDayWidgetState createState() => _DisplayDayWidgetState();
}

class _DisplayDayWidgetState extends State<DisplayDayWidget> {
  late DisplayDayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DisplayDayModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 116.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.00, -1.00),
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
                      Align(
                        alignment: const AlignmentDirectional(0.00, 1.00),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              53.0, 0.0, 0.0, 0.0),
                          child: Text(
                            dateTimeFormat('MEd', widget.dia),
                            style: FlutterFlowTheme.of(context).headlineLarge,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.00, 1.00),
                        child: Text(
                          '+ atividade',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 20.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 130.0, 0.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final activitiesList = FFAppState()
                            .Activities
                            .where((e) =>
                                dateTimeFormat('Md', widget.dia) ==
                                dateTimeFormat('Md', e.timeStart))
                            .toList()
                            .map((e) => e)
                            .toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: activitiesList.length,
                          itemBuilder: (context, activitiesListIndex) {
                            final activitiesListItem =
                                activitiesList[activitiesListIndex];
                            return Container(
                                width: 100, height: 100, color: Colors.green);
                          },
                        );
                      },
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
