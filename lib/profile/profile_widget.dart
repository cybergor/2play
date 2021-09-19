import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileWidget extends StatefulWidget {
  ProfileWidget({Key key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'circleImageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            print('IconButton pressed ...');
          },
          icon: Icon(
            Icons.menu,
            color: Color(0xFF4B39EF),
            size: 30,
          ),
          iconSize: 30,
        ),
        title: Text(
          'Профиль',
          style: FlutterFlowTheme.title2.override(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
            child: IconButton(
              onPressed: () {
                print('IconButton pressed ...');
              },
              icon: Icon(
                Icons.notifications_rounded,
                color: Color(0xFF4B39EF),
                size: 26,
              ),
              iconSize: 26,
            ),
          )
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.tertiaryColor,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.6, -1),
                          child: Image.asset(
                            'assets/images/pose-muscle-muscle-rod-press-hd-wallpaper-preview.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 110,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.95, 1),
                          child: Container(
                            width: 100,
                            height: 100,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://media.istockphoto.com/photos/portrait-young-confident-smart-asian-businessman-look-at-camera-and-picture-id1288538088?k=6&m=1288538088&s=612x612&w=0&h=aDFWrj6SNHvX5RckHp4T40PhvffudKOzfLHhjBU1Qb8=',
                              fit: BoxFit.fitHeight,
                            ),
                          ).animated([
                            animationsMap['circleImageOnPageLoadAnimation']
                          ]),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.05, 0.9),
                          child: Text(
                            'Username',
                            style: FlutterFlowTheme.title2.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Description',
                      style: FlutterFlowTheme.subtitle1.override(
                        fontFamily: 'Poppins',
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Sport is a live, Live is a sport!',
                      style: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                      ),
                      child: Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.title1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF4B39EF),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                      ),
                      child: Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.title1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF4B39EF),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                      ),
                      child: Text(
                        'Подписчики',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF4B39EF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                      ),
                      child: Text(
                        'Подписки',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF4B39EF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Container(
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xFF4B39EF),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(115, 0, 10, 0),
                              child: Container(
                                width: 50,
                                height: 90,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.tertiaryColor,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    '0',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.title1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF4B39EF),
                                      fontSize: 55,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 125,
                            height: 90,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.tertiaryColor,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Text(
                                'Сыграно\nматчей всего',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.subtitle1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 90,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.tertiaryColor,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: Icon(
                                Icons.navigate_next_sharp,
                                color: Color(0xFF6B6B6B),
                                size: 24,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 170,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xFF4B39EF),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Container(
                              width: 50,
                              height: 70,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Text(
                                  '0',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.title1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF39EF48),
                                    fontSize: 55,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Рейтинг',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.subtitle1.override(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 170,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xFF4B39EF),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Container(
                              width: 50,
                              height: 70,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Text(
                                  '0',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.title1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF4B39EF),
                                    fontSize: 55,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Предстоящие матчи',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.subtitle1.override(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Container(
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.tertiaryColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFF4B39EF),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(115, 0, 10, 0),
                          child: Container(
                            width: 50,
                            height: 90,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.tertiaryColor,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Text(
                                '0',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF4B39EF),
                                  fontSize: 55,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 125,
                        height: 90,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.tertiaryColor,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Text(
                            'Любимые\nлокации',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.subtitle1.override(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 90,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.tertiaryColor,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: Icon(
                            Icons.navigate_next_sharp,
                            color: Color(0xFF6B6B6B),
                            size: 24,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
