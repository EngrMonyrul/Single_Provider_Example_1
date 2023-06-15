import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:single_provider_1/provider/provider.dart';

class CountProvider extends StatefulWidget {
  const CountProvider({super.key});

  @override
  State<CountProvider> createState() => _CountProviderState();
}

class _CountProviderState extends State<CountProvider> {
  @override
  Widget build(BuildContext context) {
    final result = Provider.of<ProviderFiles>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Consumer<ProviderFiles>(
              builder: (context, value, child) {
                return Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Text(
                    'Score : ${result.count.toString()}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 30, color: Colors.black),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.5)),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          result.setIncCount();
                        },
                        child: const Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          result.setDecCount();
                        },
                        child: const Icon(
                          Icons.remove,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
