import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:riverpod_sample_app/provider/counter_provider.dart';
import 'package:riverpod_sample_app/repository/response/youtube_search_response.dart';
import 'package:riverpod_sample_app/repository/youtube_repository.dart';

import 'network/api_result.dart';
import 'network/network_exceptions.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final int count = useProvider(counterProvider).state;
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$count',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          context.read(counterProvider).state++;
          ApiResult<YoutubeSearchResponse> apiResult =
              await YoutubeRepository().fetchMovieList();
          apiResult.when(
            success: (YoutubeSearchResponse data) {
              log(data.kind);
            },
            failure: (NetworkExceptions error) {
              log(error.toString());
            },
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
