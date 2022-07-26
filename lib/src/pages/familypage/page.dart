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

class PageFamilyPage extends StatefulWidget {
  const PageFamilyPage({
    Key? key,
  }) : super(key: key);

  @override
  _StateFamilyPage createState() => _StateFamilyPage();
}

class _StateFamilyPage extends AuthState<PageFamilyPage>
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
            child: Padding(
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                    ),
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 16,
                          top: 8,
                          right: 16,
                          bottom: 8,
                        ),
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          border: null,
                        ),
                        child: TextField(
                          onChanged: (String value) async {},
                          onSubmitted: (String value) async {},
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(),
                            hintText: r'''Kişi Ekle''',
                            contentPadding: const EdgeInsets.only(
                              left: 16,
                            ),
                          ),
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
                          maxLines: 1,
                          minLines: 1,
                          maxLength: null,
                          obscureText: false,
                          showCursor: true,
                          autocorrect: false,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25,
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.zero,
                            child: Center(
                              child: GestureDetector(
                                onTap: () async {},
                                onLongPress: () async {},
                                child: Container(
                                  width: 125,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF0BC715),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0),
                                      bottomLeft: Radius.circular(8.0),
                                    ),
                                    border: null,
                                  ),
                                  child: Text(
                                    'Resim Seç',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.0,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Center(
                              child: GestureDetector(
                                onTap: () async {},
                                onLongPress: () async {},
                                child: Container(
                                  width: 150,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF3285FF),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0),
                                      bottomLeft: Radius.circular(8.0),
                                    ),
                                    border: null,
                                  ),
                                  child: Text(
                                    'Ekle',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.0,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    child: Divider(
                      color: Color(0xFF919191),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.zero,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 2.0,
                        crossAxisCount: 2,
                        crossAxisSpacing: 2.0,
                        childAspectRatio: 1.0,
                      ),
                      shrinkWrap: true,
                      primary: true,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              child: Image.network(
                                r'''https://tpurijhdcunkbcsfceyu.supabase.co/storage/v1/object/public/alzheimer/profile/wife.png''',
                                width: double.maxFinite,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              child: Center(
                                child: Text(r'''Eşim ( +9055555555)''',
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
                                    maxLines: 1),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              child: Image.network(
                                r'''https://tpurijhdcunkbcsfceyu.supabase.co/storage/v1/object/public/alzheimer/profile/man.png''',
                                width: double.maxFinite,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              child: Center(
                                child: Text(r'''Oğlum''',
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
                                    maxLines: 1),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              child: Image.network(
                                r'''https://tpurijhdcunkbcsfceyu.supabase.co/storage/v1/object/public/alzheimer/profile/daughter.png''',
                                width: double.maxFinite,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              child: Center(
                                child: Text(r'''Kızım''',
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
                                    maxLines: 1),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              child: Image.network(
                                r'''https://tpurijhdcunkbcsfceyu.supabase.co/storage/v1/object/public/alzheimer/profile/grandchild.png''',
                                width: double.maxFinite,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              child: Center(
                                child: Text(r'''Torunum''',
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
                                    maxLines: 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.zero,
                    child: Divider(
                      color: Color(0xFF919191),
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
                              builder: (context) => PageCalenderPage(),
                            ),
                          );
                        },
                        onLongPress: () async {},
                        child: Column(
                          children: [
                            Icon(
                              MdiIcons.fromString('calendar'),
                              size: 24,
                              color: Color(0xFF000000),
                            ),
                            Text(
                              'Hatırlatıcı',
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
