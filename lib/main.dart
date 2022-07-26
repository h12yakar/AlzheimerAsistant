  import 'dart:io';
  import 'package:flutter/material.dart';
  import 'package:splash_screen_view/SplashScreenView.dart';
  import 'package:supabase_flutter/supabase_flutter.dart';
  
  
  
  import 'package:myapp/src/pages/loginpage/page.dart';
  import 'package:teta_cms/teta_cms.dart';

  ///NOTE:
  ///if you have an error while running <flutter run> 
  ///run <flutter pub upgrade> and than <flutter run --no-sound-null-safety>
  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await TetaCMS.initialize(
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImhhYmlweWFrYXIxMkBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwicHJvamVjdHMiOlsxMjU0NDFdLCJpbWFnZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hLS9BT2gxNEdpREoza3hpbUZYYnlFS1JKU0FxWWM1ME1RZ1FsWHozUWdXUldZU1NBPXM5Ni1jIiwibmFtZSI6ImhhYmlwIHlha2FyIiwiZW1pdHRlciI6IlRldGEtQXV0aCIsImlhdCI6MTY1NTg1NDgxNSwiZXhwIjo0ODExNjE0ODE1fQ.vWSSFcnCfHdKMrLRaUIQ4s9uJaCMZgxOccvLUv6mQfM',
      prjId: 125441,
    );
    
      Supabase.initialize(
    url: 'https://tpurijhdcunkbcsfceyu.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRwdXJpamhkY3Vua2Jjc2ZjZXl1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTQ0MzA5NTgsImV4cCI6MTk3MDAwNjk1OH0.F0W3ayjyXvQee6XAxFKWVMFbFtCpj-Bg4Q67teUu9_g',
  );
  
    
    
    runApp(
      MyApp()
    );
  }
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'alzheimer',
        home: SplashScreenView(
          navigateRoute: PageLoginPage(),
          duration: 2200,
          imageSize: 400,
          imageSrc: 'assets/logo.png',
          text: '',
          textType: TextType.NormalText,
          textStyle: TextStyle(
            fontSize: 30.0,
          ),
          backgroundColor: Color(0xFF003458),
        ),
      );
    }
  }
  