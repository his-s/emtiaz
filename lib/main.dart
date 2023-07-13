import 'package:flutter/material.dart';

/// Flutter code sample for [SliverAppBar.large].

void main() {
  runApp(const AppBarLargeApp());
}

class AppBarLargeApp extends StatelessWidget {
  const AppBarLargeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xff6750A4),
      ),
      home: Material(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar.large(
              centerTitle: true,
              leading:
                  IconButton(icon: const Icon(Icons.search), onPressed: () {}),
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(child: Text('Clincal Exam'.toUpperCase())),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      color: Colors.indigoAccent,
                      thickness: 1.5,
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                IconButton(icon: const Icon(Icons.star), onPressed: () {}),
              ],
            ),
            // Just some content big enough to have something to scroll.
            SliverToBoxAdapter(
              child: Card(
                child: SizedBox(
                  height: 1600,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 100, 8, 100),
                    child: Text(
                      'Here be scrolling content...',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
