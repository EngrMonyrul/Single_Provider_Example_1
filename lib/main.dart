import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:single_provider_1/pages/countWithProvider.dart';
import 'package:single_provider_1/provider/provider.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>ProviderFiles(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Examples',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity
        ),
        home: const CountProvider(),
      ),
    );
  }
}
