// ignore_for_file: use_key_in_widget_constructors

import 'package:first_app/components/another_card.dart';
import 'package:flutter/material.dart';
import 'components/welcome_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  /*
  override ini digunakan untuk menandai bahwa saya sedang menimpa method yang sudah ada (karena MyApp extends terhadap class StatelessWidget yang punya method build).
  simplenya override = saya ingin mengganti perilaku bawaan dari induknya dan membuat versi saya sendiri.

  class yang sering di override di flutter :
  | Kelas Induk              | Method yang Bisa Di-Override          |
| ------------------------ | ------------------------------------- |
| `StatelessWidget`        | `build()`                             |
| `StatefulWidget`         | `createState()`                       |
| `State<T>`               | `initState()`, `build()`, `dispose()` |
| `WidgetsBindingObserver` | `didChangeAppLifecycleState()`        |

  */
  Widget build(BuildContext context) {
    /*
    - Widget di sini berarti method build akan mengembalikan sebuah widget.
    - Build adalah method utama di dalam flutter untuk membuat sebuah UI.

     */

    return MaterialApp(
      /*
      MaterialApp adalah widget utama yang menyediakan banyak fitur penting untuk aplikasi Flutter, seperti tema, rute, dan lainnya.
      */
      title: 'Watashi no Flutter APP',
      home: HomePage(),
      /*
      - Title adalah judul aplikasi yang akan ditampilkan di taskbar atau launcher.
      - Home adalah widget yang akan ditampilkan ketika aplikasi pertama kali dijalankan.
      */
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      Scaffold adalah widget dasar yang menyediakan struktur UI untuk aplikasi, termasuk app bar, body, dan bottom navigation bar. (Kerangka Halaman).
      */
      appBar: AppBar(title: Text('Hello world')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        /* 
        - mainAxisAlignment digunakan untuk mengatur widget di dalam Column akan diatur secara vertikal.
        - crossAxisAlignment digunakan untuk mengatur widget di dalam Column akan diatur secara horizontal.
        */
        children: [
          WelcomeCard(username: 'Andreas'),
          AnotherCard(message: 'Hello from another universe!!!!!!!'),
          AnotherCard(message: 'Hello from another universe 2 !!!!!!!'),
          AnotherCard(message: 'Hello from another universe 2 !!!!!!!'),
          AnotherCard(message: 'Hello from another universe 2 !!!!!!!'),
          AnotherCard(message: 'Hello from another universe 2 !!!!!!!'),
          AnotherCard(message: 'Hello from another universe 2 !!!!!!!'),
          AnotherCard(message: 'Hello from another universe 2 !!!!!!!'),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Action for home button
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Action for settings button
              },
            ),
          ],
        ),
      ),
    );
  }

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text('Watashi no Flutter APP')),
  //     body: Center(child: WelcomeCard(username: 'Andreas')),
  //   );
  // }
}

// class HomePage2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//     )
//   }
// }
