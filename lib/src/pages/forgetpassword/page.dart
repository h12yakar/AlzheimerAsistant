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

class PageForgetPassword extends StatefulWidget {
  const PageForgetPassword({
    Key? key,
  }) : super(key: key);

  @override
  _StateForgetPassword createState() => _StateForgetPassword();
}

class _StateForgetPassword extends AuthState<PageForgetPassword>
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
              color: Color(0xFF003458),
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
                    padding: EdgeInsets.zero,
                    child: Center(
                      child: Image.network(
                        r'''https://tpurijhdcunkbcsfceyu.supabase.co/storage/v1/object/public/alzheimer/app/logo.png''',
                        width: double.maxFinite,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Center(
                      child: Text(r'''Lütfen mail adresinizi giriniz.''',
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
                          maxLines: 1),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.zero,
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 16,
                          top: 8,
                          right: 16,
                          bottom: 8,
                        ),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                            bottomLeft: Radius.circular(5.0),
                          ),
                          border: null,
                        ),
                        child: TextField(
                          onChanged: (String value) async {},
                          onSubmitted: (String value) async {},
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                topRight: Radius.circular(5.0),
                                bottomRight: Radius.circular(5.0),
                                bottomLeft: Radius.circular(5.0),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                topRight: Radius.circular(5.0),
                                bottomRight: Radius.circular(5.0),
                                bottomLeft: Radius.circular(5.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                topRight: Radius.circular(5.0),
                                bottomRight: Radius.circular(5.0),
                                bottomLeft: Radius.circular(5.0),
                              ),
                            ),
                            hintText: r'''Mail Adresinizi Giriniz.''',
                            contentPadding: const EdgeInsets.only(
                              left: 16,
                            ),
                          ),
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
                      left: 50,
                      top: 10,
                      right: 50,
                    ),
                    child: GestureDetector(
                      onTap: () async {},
                      onLongPress: () async {},
                      child: Container(
                        width: double.maxFinite,
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
                          'Gönder',
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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 100,
                      top: 15,
                      right: 100,
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        await Navigator.push<void>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PageHomePage(),
                          ),
                        );
                      },
                      onLongPress: () async {},
                      child: Container(
                        width: double.maxFinite,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF21619),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                            bottomLeft: Radius.circular(8.0),
                          ),
                          border: null,
                        ),
                        child: Text(
                          'İptal',
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
