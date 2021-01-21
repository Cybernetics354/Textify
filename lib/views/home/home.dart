import 'package:flutter/material.dart';
import 'package:textify/views/home/tabview/browse.dart';
import 'package:textify/views/home/tabview/saved.dart';

class HomeMainView extends StatefulWidget {
  @override
  _HomeMainViewState createState() => _HomeMainViewState();
}

class _HomeMainViewState extends State<HomeMainView> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() { 
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: 2
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          
        },
      ),
      appBar: AppBar(
        title: Text("Textify"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: "Browse",
            ),
            Tab(
              text: "Saved",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          BrowseViewWidget(),
          SavedViewWidget()
        ],
      ),
    );
  }
}