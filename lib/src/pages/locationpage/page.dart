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

class PageLocationPage extends StatefulWidget {
  const PageLocationPage({
    Key? key,
  }) : super(key: key);

  @override
  _StateLocationPage createState() => _StateLocationPage();
}

class _StateLocationPage extends AuthState<PageLocationPage>
    with SingleTickerProviderStateMixin {
  String mapController = '0';

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
              color: Color(0xFFF8F8F8),
              border: Border(
                left: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000)),
                top: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000)),
                right: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000)),
                bottom: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000)),
              ),
            ),
            child: map.MapLayoutBuilder(
              controller: map.MapController(
                location: LatLng(41.52, 12.30),
                zoom: 4,
              ),
              builder: (context, transformer) {
                return Stack(
                  children: [
                    map.Map(
                      controller: map.MapController(
                        location: LatLng(41.52, 12.30),
                        zoom: 5,
                      ),
                      builder: (context, x, y, z) {
                        final url =
                            'https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/$z/$x/$y?access_token=pk.eyJ1IjoiaGFiaXAiLCJhIjoiY2w0MXBvZjN3MGJrNzNobWdqb2gybHkyNSJ9.mZGAVA1k8nxrcUFmz6F01A';
                        final darkUrl =
                            'https://api.mapbox.com/styles/v1/mapbox/dark-v10/tiles/$z/$x/$y?access_token=pk.eyJ1IjoiaGFiaXAiLCJhIjoiY2w0MXBvZjN3MGJrNzNobWdqb2gybHkyNSJ9.mZGAVA1k8nxrcUFmz6F01A';
                        return Image.network(
                          true ? darkUrl : url,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
          // BottomBar
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
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
                            color: Color(0xFFFFFFFF),
                          ),
                          Text(
                            'Ana Sayfa',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: const Color(0xFFFFFFFF),
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
                            MdiIcons.fromString('account-box-multiple'),
                            size: 24,
                            color: Color(0xFFFFFFFF),
                          ),
                          Text(
                            'Aile',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: const Color(0xFFFFFFFF),
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
                            builder: (context) => PageCalenderPage(),
                          ),
                        );
                      },
                      onLongPress: () async {},
                      child: Column(
                        children: [
                          Icon(
                            MdiIcons.fromString('calendar-account-outline'),
                            size: 24,
                            color: Color(0xFFFFFFFF),
                          ),
                          Text(
                            'Hatırlatıcı',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: const Color(0xFFFFFFFF),
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
                            color: Color(0xFFFFFFFF),
                          ),
                          Text(
                            'Profil',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: const Color(0xFFFFFFFF),
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
              )),
        ],
      ),
    );
  }
}
