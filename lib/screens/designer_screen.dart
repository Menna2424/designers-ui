import 'package:designers_ui/components/designer_card.dart';
import 'package:designers_ui/model/designer_model.dart';
import 'package:flutter/material.dart';

class DesignersScreen extends StatelessWidget {
  const DesignersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorPadding: EdgeInsets.only(right: 20, left: 20),
              tabs: [
                Tab(
                  child: Text("Designer", style: TextStyle(fontSize: 20)),
                ),
                Tab(
                  child: Text("Category"),
                ),
                Tab(
                  child: Text("Attention"),
                ),
              ]),
          backgroundColor: Colors.deepPurple,
          leading: BackButton(color: Colors.white),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 1,
              child: TabBarView(children: [
                Text("designer"),
                Text("category"),
                Text("attention"),
              ]),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: designers.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        DesignerCard(designer: designers[index]),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
