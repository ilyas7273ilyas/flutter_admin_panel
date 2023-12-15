import 'package:admin_waiu_web_panel/dashboard/side_navigation_drawer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

/// command for executing the project
/// flutter run -d chrome --web-renderer html

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAlbjyjp010VvgNupaXWE4TN-WGvNStdf0",
        authDomain: "vayu-ride-with-admin.firebaseapp.com",
        databaseURL: "https://vayu-ride-with-admin-default-rtdb.firebaseio.com",
        projectId: "vayu-ride-with-admin",
        storageBucket: "vayu-ride-with-admin.appspot.com",
        messagingSenderId: "436597238544",
        appId: "1:436597238544:web:9a24897d3ec522e5825395",
        measurementId: "G-KYNYPJ0LW4",
    )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: SideNavigationDrawer(),
    );
  }
}


