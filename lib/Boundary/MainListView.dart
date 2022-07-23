import 'package:awtka/Entity/Accademia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Entity/Allievo.dart';
import '../Entity/Classi.dart';
import '../Helpers.dart';



class MainListView extends StatefulWidget {
  const MainListView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
   return MainListViewState();
  }

}

class MainListViewState extends State<MainListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundWhite,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            //Todo: Pin segmented control sliver
            /*SliverPersistentHeader(
                //pinned: true,
                delegate: Delegate()
            ),*/
            SliverToBoxAdapter(
              child: SegmentedControl(),
            ),
          ],
        ),
      ),
    );
  }

}


class Delegate extends SliverPersistentHeaderDelegate  {
  Delegate();

  @override
  Widget build(BuildContext context, double shrinkOffset,
      bool overlapsContent) {
    return SegmentedControl();
  }

  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class SegmentedControl extends StatefulWidget {

  int selectedIndex = 0;
  @override
  State<StatefulWidget> createState() {
     return SegmentedControlState();
  }

}


class SegmentedControlState extends State<SegmentedControl> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: Center(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            bool selected = widget.selectedIndex == index;
            return Center(
                child: GestureDetector(
                  onTap: () => setState((){
                    widget.selectedIndex = index;
                  }),
                  child: SizedBox(
                    height: 45,
                    width: 120,
                    child: Card (
                      color: selected ? CustomColors.mainRed: Colors.white,
                      child: Center(child: Text(Classi.classi[index], style: selected? Theme.of(context).textTheme.bodyText2:Theme.of(context).textTheme.bodyText1 )),
                    ),
                  ),
                )
            );
          },
        ),
      ),
    );
  }



}

class ListHeaderDelegate extends SliverPersistentHeaderDelegate  {
  String title;

  ListHeaderDelegate(this.title);

  @override
  Widget build(BuildContext context, double shrinkOffset,
      bool overlapsContent) {
    return ListClassHeader(title);
  }

  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}



class ListClassHeader extends StatefulWidget {

  String title;

  ListClassHeader(this.title);

  @override
  State<StatefulWidget> createState() {
    return ListClassHeaderState();
  }
}

class ListClassHeaderState extends State<ListClassHeader> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: Center(
        child: Text(widget.title);
      ),
    );
  }
}
