import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import '../url_factory.dart';

class PrivacidadeScreen extends StatelessWidget {
  const PrivacidadeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String fullText = '''<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus, nisi vel eleifend posuere, felis mi rhoncus mauris, ut imperdiet ipsum enim ornare purus. Nunc a efficitur lacus, id euismod felis. Phasellus non gravida orci. Duis vehicula orci in diam posuere gravida. Nunc consequat aliquam lacus, non eleifend massa ultrices quis. Duis finibus porta lacus eu sodales. Quisque vel ante posuere, viverra eros ac, imperdiet nisi. Nullam faucibus aliquet venenatis.</p>

    <p>Sed egestas scelerisque interdum. Donec mattis arcu magna, ut tristique turpis accumsan id. Vivamus quis tincidunt lorem, in interdum ipsum. Nulla condimentum tortor dignissim, sollicitudin nunc vel, feugiat nisi. Pellentesque ex est, auctor non aliquet vitae, suscipit pharetra elit. Nullam sed nibh posuere, gravida turpis non, vestibulum eros. Cras sed rhoncus lacus. Sed quis erat quam.</p>

<p><strong>Continente</strong> - <a href="https://revistacontinente.com.br">www.revistacontinente.com.br</a></p>

<p>Donec ultricies nisi ac gravida ultricies. Aliquam non egestas odio, ac ullamcorper sapien. Aliquam sit amet metus ultrices, tristique diam eu, imperdiet velit. Maecenas vel quam in ipsum tincidunt blandit. Etiam elementum sit amet sem ac consectetur. Donec enim augue, faucibus ut venenatis at, iaculis at lorem. Maecenas pharetra quam fermentum felis sollicitudin facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque aliquet est at felis imperdiet imperdiet. Pellentesque maximus turpis vitae dui convallis, a semper lacus hendrerit.</p>

<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc nec lorem feugiat, mollis neque quis, facilisis arcu. Vestibulum in justo ut erat mattis sollicitudin ac at mauris. Quisque fringilla tortor id odio ullamcorper, vitae lobortis libero pharetra. Vestibulum facilisis rutrum dapibus. Cras dapibus lorem augue, non consectetur est tincidunt et. Quisque semper nisi nec libero tempus lacinia. Praesent eget ligula nec tortor dignissim blandit sed ornare nunc. Cras nec pretium dui. Etiam orci tortor, iaculis eu risus quis, suscipit mattis metus. Donec pharetra eleifend leo eu iaculis. Sed lacus justo, sagittis id lorem ut, venenatis condimentum ante.</p>

<p>Nulla dui magna, venenatis sed turpis eu, eleifend porttitor turpis. Quisque at tellus dignissim, ultrices erat id, ultrices mi. Suspendisse ipsum lorem, mattis et sollicitudin sit amet, congue id lorem. Curabitur varius augue lorem, sed ullamcorper velit accumsan ac. Phasellus magna ipsum, semper at tellus et, malesuada maximus enim. Sed id lorem et odio ornare sollicitudin vel in ligula. Maecenas fermentum laoreet ornare. Pellentesque non blandit dolor, auctor tristique mi. Maecenas vitae mattis elit. Proin vitae dolor eget eros placerat mollis sit amet ac tellus. Donec dapibus scelerisque massa, eget accumsan libero. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>

<p>Vivamus eget tristique nisl. Quisque quam turpis, faucibus at sapien eget, pulvinar fringilla lorem. Integer et finibus ligula. Aliquam ornare tempor eros at tristique. Sed non eros lacinia, vulputate risus sit amet, fermentum tellus. Vivamus ut tortor nisl. Integer ut metus non mi dignissim tincidunt in pretium urna. Vivamus maximus porttitor orci. In hac habitasse platea dictumst. Sed tortor ipsum, tincidunt id malesuada nec, rhoncus vel tortor. Mauris porta mi a nunc ultricies laoreet. Donec pharetra ex ac neque semper tristique. Quisque eu orci et lacus ultrices ultrices eu id tellus. Suspendisse ac faucibus ipsum. Suspendisse in scelerisque ipsum.</p>

<p>Donec in ullamcorper lectus. Fusce vitae sem ac est volutpat placerat. Nam feugiat pellentesque tellus, ac interdum velit. Nam tincidunt commodo magna ac cursus. In dictum, sem eget rhoncus maximus, risus massa convallis risus, quis pretium ligula libero ut lectus. In ultrices viverra orci, sed semper ante ullamcorper a. Donec a luctus tortor, sit amet facilisis felis. Sed interdum lacus vel nibh vehicula ullamcorper.</p>

<p>Phasellus vestibulum a felis at porta. Donec ut imperdiet ex. Donec lacinia, lacus ac dignissim accumsan, ex risus porta metus, quis posuere est nibh a enim. Maecenas aliquam, nulla eu volutpat eleifend, eros nunc vulputate elit, vel ullamcorper justo ex id tellus. Maecenas libero nisl, luctus nec gravida ut, aliquam ut ipsum. Pellentesque ultricies libero eget felis gravida, sit amet consectetur orci molestie. Curabitur rutrum est gravida efficitur cursus.</p>''';

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
                        'Política de Privacidade',
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
