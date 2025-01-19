import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import '../url_factory.dart';
import '../models/post_model.dart';

class PrivacyScreen extends StatefulWidget {
    const PrivacyScreen({super.key});

    @override
    State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
    @override
    void initState() {
        getData();

        super.initState();
    }

    Future getData() async {
        var response = await http.get(Uri.parse('https://dummyjson.com/posts/1'));

        if (response.statusCode == 200) {
            return Post.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
        } else {
            throw Exception('Failed to load');
        }
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text(''),
                backgroundColor: Colors.lightGreen,
            ),
            body: SingleChildScrollView(
                padding: const EdgeInsets.all(20.0),
                child: FutureBuilder(
                    future: getData(),
                    builder: (context, AsyncSnapshot snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                        }

                        if (snapshot.hasData) {
                            Post page = snapshot.data;

                            return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            top: 0,
                                            bottom: 22.0,
                                        ),
                                        child: Text(
                                            page.title,
                                            style: const TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                            ),
                                        ),
                                    ),
                                    HtmlWidget(
                                        page.body,
                                        textStyle: const TextStyle(fontSize: 16),
                                        factoryBuilder: () => UrlFactory(),
                                    ),
                                ],
                            );
                        } else {
                            return const Center(
                                child: Text('Error'),
                            );
                        }
                    }
                ),
            ),
        );
    }
}
