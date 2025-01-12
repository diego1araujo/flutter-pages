import 'package:flutter/material.dart';
import '../pages/sobre_screen.dart';
import '../pages/privacidade_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.lightGreen,
    ),
      endDrawer: Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: [
                ListTile(
                    leading: const Icon(Icons.close_rounded),
                    onTap: () {
                        Navigator.pop(context);  // This closes the drawer
                    },
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ListTile(
                        title: const Text('Sobre'),
                        onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SobreScreen()),
                            );
                        },
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: ListTile(
                        title: const Text('Política de Privacidade'),
                        onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const PrivacidadeScreen()),
                            );
                        },
                    ),
                ),
            ],
        ),
    ),
    //   endDrawer: const Drawer(
    //     child: SingleChildScrollView(
    //         child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.stretch,
    //             children: [
    //                 Padding(padding: EdgeInsets.only(top: 30.0)),
    //                 ListTile(
    //                     visualDensity: VisualDensity(horizontal: -4, vertical: 0),
    //                     leading: Icon(Icons.home_outlined),
    //                     title: Text('Home'),
    //                     onTap: null,
    //                 ),
    //                 ListTile(
    //                     visualDensity: VisualDensity(horizontal: -4, vertical: 0),
    //                     leading: Icon(Icons.home_outlined),
    //                     title: Text('Home'),
    //                     onTap: null,
    //                 ),
    //                 ListTile(
    //                     visualDensity: VisualDensity(horizontal: -4, vertical: 0),
    //                     leading: Icon(Icons.home_outlined),
    //                     title: Text('Home'),
    //                     onTap: null,
    //                 ),
    //             ],
    //         ),
    //     ),
    //   ),
      body: const Center(
        child: null,
      ),
    );
  }
}
