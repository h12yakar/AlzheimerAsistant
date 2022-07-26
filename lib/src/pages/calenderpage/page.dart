import 'dart:ui';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:myapp/src/components/index.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:myapp/auth/auth_state.dart';
import 'package:map/map.dart' as map;
import 'package:auth_buttons/auth_buttons.dart';

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:collection/collection.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';
import 'package:latlng/latlng.dart';
import 'package:badges/badges.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:http/http.dart' as http;
import 'package:teta_cms/teta_cms.dart';

class PageCalenderPage extends StatefulWidget {
  const PageCalenderPage({
    Key? key,
  }) : super(key: key);

  @override
  _StateCalenderPage createState() => _StateCalenderPage();
}

class _StateCalenderPage extends AuthState<PageCalenderPage>
    with SingleTickerProviderStateMixin {
  var datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
              border: Border(
                left: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFFFFFFFF)),
                top: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFFFFFFFF)),
                right: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFFFFFFFF)),
                bottom: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFFFFFFFF)),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: Divider(
                      color: Color(0xFF000000),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 100,
                    ),
                    child: Divider(
                      color: Color(0xFF000000),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 200,
                    ),
                    child: Divider(
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // BottomBar
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  border: Border(
                    left: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                        color: Color(0xFFFFFFFF)),
                    top: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                        color: Color(0xFFFFFFFF)),
                    right: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                        color: Color(0xFFFFFFFF)),
                    bottom: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                        color: Color(0xFFFFFFFF)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: () async {
                          await Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageHomePage(),
                            ),
                          );
                        },
                        onLongPress: () async {},
                        child: Column(
                          children: [
                            Icon(
                              MdiIcons.fromString('home'),
                              size: 24,
                              color: Color(0xFF000000),
                            ),
                            Text(
                              'Ana Sayfa',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                            )
                          ],
                        )),
                    GestureDetector(
                        onTap: () async {
                          await Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageLocationPage(),
                            ),
                          );
                        },
                        onLongPress: () async {},
                        child: Column(
                          children: [
                            Icon(
                              MdiIcons.fromString('map-marker'),
                              size: 30,
                              color: Color(0xFF000000),
                            ),
                            Text(
                              'Lokasyon',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                            )
                          ],
                        )),
                    GestureDetector(
                        onTap: () async {
                          await Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageFamilyPage(),
                            ),
                          );
                        },
                        onLongPress: () async {},
                        child: Column(
                          children: [
                            Icon(
                              MdiIcons.fromString(
                                  'account-box-multiple-outline'),
                              size: 24,
                              color: Color(0xFF000000),
                            ),
                            Text(
                              'Aile',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                            )
                          ],
                        )),
                    GestureDetector(
                        onTap: () async {
                          await Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageProfilePage(),
                            ),
                          );
                        },
                        onLongPress: () async {},
                        child: Column(
                          children: [
                            Icon(
                              MdiIcons.fromString('account'),
                              size: 24,
                              color: Color(0xFF000000),
                            ),
                            Text(
                              'Profil',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                            )
                          ],
                        )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
