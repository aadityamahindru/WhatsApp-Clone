import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>with SingleTickerProviderStateMixin{
  TabController _tabController;

  ScrollController _scrollController;
  @override
  void initState() {
    _tabController=TabController(length: 4,vsync: this);
    _scrollController=ScrollController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Color(0xFF075e54),
              title: Text("WhatsApp"),
              bottom: TabBar(
                controller: _tabController,
                tabs: <Widget>[
                  Tab(
                    child: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    child: Text("CHATS"),
                  ),
                  Tab(
                    child: Text("STATUS"),
                  ),
                  Tab(
                    child: Text("CALLS"),
                  ),
                ],
              ),
            )
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Text("camera"),
            Text("chats"),
            Text("status"),
            Text("calls"),

          ],
        ),
      ),
    );
  }
}