import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import '../url_factory.dart';

class SobreScreen extends StatelessWidget {
  const SobreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String fullText = '''<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur ut lacinia nibh. Integer et laoreet libero, a vehicula nunc. Fusce tincidunt ligula sit amet massa imperdiet varius. Vestibulum sit amet rhoncus massa. In accumsan, risus vitae egestas consequat, justo arcu aliquet eros, a tincidunt mauris nisl in nunc. Donec ac nisi neque.</p>

    <p>Proin tempus massa sed augue tincidunt tincidunt. Proin volutpat tellus vitae fringilla hendrerit. Mauris maximus, leo id gravida sagittis, nisl est egestas erat, ut fringilla lectus tortor vel velit. Pellentesque tincidunt, elit a consectetur efficitur, libero diam venenatis urna, malesuada maximus urna neque quis nunc. Vestibulum non lorem vel diam dignissim feugiat et vel sapien. Nam venenatis sit amet orci in molestie. Sed semper pharetra purus, vel elementum mauris tempus rhoncus. Aenean quis urna eu sapien posuere imperdiet. Duis mattis in dui non aliquam.</p>

<p>Nunc aliquam, sem sit amet pharetra interdum, ipsum sapien dignissim velit, sit amet viverra leo nibh vel nulla. Aliquam aliquam tempor urna ut aliquam. Suspendisse iaculis tristique nunc non faucibus. Aenean eget posuere libero. Fusce eleifend orci nunc, non iaculis libero iaculis a. Nunc tempus lectus id turpis imperdiet, et posuere neque egestas. Sed semper et sem et suscipit. Nunc a orci congue nulla dapibus dignissim nec ac enim. Proin in sapien dapibus, interdum nisl vel, condimentum diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas tellus vel leo vehicula, at iaculis nunc interdum.</p>

<p>Aenean cursus vel est in varius. Nullam vestibulum sagittis finibus. Nam pulvinar tortor in feugiat aliquam. Nam a luctus eros, non posuere nibh. Proin libero nisl, dignissim non ante a, ullamcorper feugiat lorem. Donec ornare leo elit, sit amet interdum turpis pellentesque a. Quisque non elit cursus, cursus justo eget, consequat ex. Pellentesque vitae ex purus. Integer lacinia congue velit. Etiam faucibus tortor vitae enim scelerisque fermentum. Vivamus ut eleifend ipsum, sit amet mattis enim. Cras eleifend lacinia orci, sit amet aliquet leo vestibulum et. Mauris sodales tortor eros, eu malesuada nibh posuere eu.</p>''';

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.lightGreen,
    ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                const Padding(
                    padding: EdgeInsets.only(
                        top: 0,
                        bottom: 22.0,
                    ),
                    child: Text(
                        'Sobre',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                        ),
                    ),
                ),
                // Text(fullText,
                //     style: TextStyle(fontSize: 16),
                // ),
                HtmlWidget(
                    fullText,
                    textStyle: const TextStyle(fontSize: 16),
                    factoryBuilder: () => UrlFactory(),
                ),
          ],
        ),
      ),
    );
  }
}
