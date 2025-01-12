import 'package:flutter/material.dart';
import 'package:first_app/url_factory.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:dio/dio.dart';
import '../models/page_model.dart';

Future<PageModel> fetchData(String url, Map<String, dynamic> body) async {
    Dio dio = Dio();

    try {
        final response = await dio.post(
            url,
            data: body,
            options: Options(
                headers: {'Content-Type': 'application/json'},
            ),
        );

        if (response.statusCode == 200) {
            return PageModel.fromJson(response.data);
        } else {
            throw Exception('Failed to load data');
        }
    } catch (e) {
        throw Exception('Failed to make request: $e');
    }
}

class MyApi extends StatelessWidget {
    const MyApi({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: const Text(''),
                    backgroundColor: Colors.lightGreen,
                ),
                body: SingleChildScrollView(
                    padding: const EdgeInsets.all(20.0),
                    child: FutureBuilder<PageModel>(
                        future: fetchData(
                            'http://localhost/_privacidade.json',
                            {},
                        ),
                        builder: (context, snapshot) {
                            if (snapshot.connectionState == ConnectionState.waiting) {
                                return const CircularProgressIndicator();
                            } else if (snapshot.hasError) {
                                return Text('Error: ${snapshot.error}');
                            } else if (snapshot.hasData) {
                                final data = snapshot.data!;

                                return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                top: 0,
                                                bottom: 22.0,
                                            ),
                                            child: Text(
                                                data.title,
                                                style: const TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                ),
                                            ),
                                        ),
                                        // Text(fullText,
                                        //     style: TextStyle(fontSize: 16),
                                        // ),
                                        HtmlWidget(
                                            data.text,
                                            textStyle: const TextStyle(fontSize: 16),
                                            factoryBuilder: () => UrlFactory(),
                                        ),
                                    ],
                                );
                            }

                            return const Text('No data');
                        },
                    ),
                ),
            ),
        );
    }
}
