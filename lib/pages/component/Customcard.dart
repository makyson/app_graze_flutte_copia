
import '/flutter_flow/flutter_flow_theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';




class Customcard extends StatelessWidget {
  final String? urlimagem;
  final String? nomefiltro;
  final double? horasrest;
  final String? nomesol;
  final String? nomereq;
  final String? referencia;
  final String? obs;
  final String? dataultima;
  final double fontsize;

  const Customcard({
    super.key,
    this.urlimagem="",
    this.nomefiltro="",
    this.horasrest,
    this.nomesol="",
    this.nomereq="",
    this.referencia="",
    this.obs="",
    this.dataultima="",
    required this.fontsize,
  });




  @override
  Widget build(BuildContext context) {
    final screenWidth = fontsize > 31.12 ? fontsize * 9.4:
    fontsize > 30 ? fontsize * 9.6:
    fontsize > 25.16 ? fontsize * 11:
    fontsize < 21.16 ? fontsize * 14 :
    fontsize < 25.16 ? fontsize * 13  :
    fontsize * 8;




    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
          child: Container(
            width: double.infinity,
            height: screenWidth * 1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).primary,
                  FlutterFlowTheme.of(context).secondary
                ],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, -1.00),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              7.0, 10.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [


                              Align(
                                alignment: AlignmentDirectional(-1.00, -1.00),
                                child: urlimagem != null
                                    ? Image.network(
                                  urlimagem!,
                                  width: screenWidth * 0.237,
                                  height: screenWidth * 0.241,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    // Em caso de erro, retorna um widget vazio
                                    return SizedBox();
                                  },
                                )
                                    : SizedBox(), // Retorna um widget vazio se urlimagem for nulo
                              ),

                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 0.0, 0.0),
                                child: Text(

                                  nomefiltro!,
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: fontsize * 1.02,

                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 15.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsetsDirectional.fromSTEB(
                                        6.0, 3.0, 0.0, 3.0),
                                    child: Text(
                                      'Horas restante',
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(
                                            context)
                                            .primaryText,
                                        fontSize: fontsize * 0.8,

                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsetsDirectional.fromSTEB(
                                        7.0, 0.0, 0.0, 0.0),
                                    child: Text(

                                      '$horasrest',

                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(
                                            context)
                                            .error,
                                        fontSize: fontsize * 1.3,

                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,

                          children: [
                            Padding(

                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 3.0),
                              child: Row(

                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional
                                            .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                        child: Text(

                                          'solicitante:',

                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          style: FlutterFlowTheme.of(
                                              context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color:
                                            FlutterFlowTheme.of(
                                                context)
                                                .primaryText,

                                            fontSize: fontsize < 0.4
                                                ? fontsize * 0.4
                                                : fontsize < 23
                                                ? fontsize * 0.7
                                                : fontsize > 25
                                                ? fontsize * 0.43
                                                : fontsize * 0.8,

                                            fontWeight:
                                            FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(

                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional
                                            .fromSTEB(5.0, 3.0, 0.0, 0.0),
                                        child: Text(
                                          nomesol!,
                                          textAlign: TextAlign.start,
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(
                                              context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color:
                                            FlutterFlowTheme.of(
                                                context)
                                                .accent4,
                                            fontSize: fontsize < 0.4
                                                ? fontsize * 0.44
                                                : fontsize < 23
                                                ? fontsize * 0.74
                                                : fontsize > 25
                                                ? fontsize * 0.48
                                                : fontsize * 0.84,
                                            fontWeight:
                                            FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 7.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional
                                            .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'requisitante:',
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          style: FlutterFlowTheme.of(
                                              context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color:
                                            FlutterFlowTheme.of(
                                                context)
                                                .primaryText,
                                            fontSize: fontsize < 0.4
                                                ? fontsize * 0.4
                                                : fontsize < 23
                                                ? fontsize * 0.7
                                                : fontsize > 25
                                                ? fontsize * 0.43
                                                : fontsize * 0.8,
                                            fontWeight:
                                            FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional
                                            .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          nomereq!,
                                          textAlign: TextAlign.start,
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(
                                              context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color:
                                            FlutterFlowTheme.of(
                                                context)
                                                .accent4,
                                            fontSize: fontsize < 0.4
                                                ? fontsize * 0.44
                                                : fontsize < 23
                                                ? fontsize * 0.74
                                                : fontsize > 25
                                                ? fontsize * 0.48
                                                : fontsize * 0.84,
                                            fontWeight:
                                            FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 22.0, 14.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional
                                            .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'ref:',
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          style: FlutterFlowTheme.of(
                                              context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color:
                                            FlutterFlowTheme.of(
                                                context)
                                                .primaryText,
                                            fontSize: fontsize < 0.4
                                                ? fontsize * 0.4
                                                : fontsize < 23
                                                ? fontsize * 0.7
                                                : fontsize > 25
                                                ? fontsize * 0.43
                                                : fontsize * 0.8,
                                            fontWeight:
                                            FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional
                                            .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          referencia!,
                                          textAlign: TextAlign.start,
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(
                                              context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color:
                                            FlutterFlowTheme.of(
                                                context)
                                                .accent4,
                                            fontSize: fontsize < 0.4
                                                ? fontsize * 0.44
                                                : fontsize < 23
                                                ? fontsize * 0.74
                                                : fontsize > 25
                                                ? fontsize * 0.48
                                                : fontsize * 0.84,
                                            fontWeight:
                                            FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                alignment:
                                AlignmentDirectional(1.00, 1.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 4.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding: EdgeInsetsDirectional
                                              .fromSTEB(
                                              8.0, 0.0, 10.0, 0.0),
                                          child: Column(
                                            mainAxisSize:
                                            MainAxisSize.max,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    0.0,
                                                    0.0,
                                                    0.0,
                                                    0.0),
                                                child: Text(
                                                  'Observação',
                                                  textAlign:
                                                  TextAlign.start,
                                                  maxLines: 1,
                                                  style:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelMedium
                                                      .override(
                                                    fontFamily:
                                                    'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .primaryText,
                                                    lineHeight:
                                                    1.0,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                obs!,
                                                textAlign:
                                                TextAlign.start,
                                                maxLines: 2,
                                                style:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily:
                                                  'Roboto Mono',
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .alternate,
                                                  fontSize: screenWidth * 0.051,
                                                  lineHeight: 1.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional
                                                .fromSTEB(
                                                0.0, 0.0, 0.0, 2.0),
                                            child: Text(
                                              'alt. troca',
                                              textAlign: TextAlign.center,
                                              maxLines: 1,
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .labelMedium
                                                  .override(
                                                fontFamily:
                                                'Readex Pro',
                                                color: FlutterFlowTheme
                                                    .of(context)
                                                    .primaryText,
                                                lineHeight: 1.0,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            dataultima!,
                                            style: FlutterFlowTheme.of(
                                                context)
                                                .bodyMedium
                                                .override(
                                              fontFamily:
                                              'Roboto Mono',
                                              color:
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .info,
                                              fontSize: screenWidth * 0.060,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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



    );
  }


}
