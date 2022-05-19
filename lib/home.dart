import 'package:aprenda_ingles/animals.dart';
import 'package:aprenda_ingles/numbers.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aprenda Inglês'),
        backgroundColor: Colors.brown,
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Bichos',
            ),
            Tab(
              text: 'Números',
            ),
            Tab(
              text: 'Vogais',
            ),
          ],
        ),
      ),
      body: Container(
        child: TabBarView(
            controller: _tabController,
            children: const [
              Animals(),
              Numbers(),
              Center(child: Text('Terceira')),
            ]
        ),
      ),
    );
  }
}
