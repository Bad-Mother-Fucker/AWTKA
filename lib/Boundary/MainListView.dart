
import 'package:awtka/Boundary/AllievoTIle.dart';
import 'package:awtka/Entity/Accademia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sticky_headers/sticky_headers.dart';
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
      backgroundColor: CustomColors.whiteAppBar,
      appBar:  AppBar(
          elevation: 1,
          backgroundColor: CustomColors.whiteAppBar,
          title: Center(
            child:  Text("ALLIEVI", style: Theme.of(context).textTheme.headline5),
          ),
          bottom: SegmentedControl()
      ),

     body:  Padding(
       padding: const EdgeInsets.symmetric(horizontal: 8.0),
       child: ListView.builder(
         // physics: BouncingScrollPhysics(),

           padding: EdgeInsets.all(8),
           itemCount: 5,
           shrinkWrap: true,
           itemBuilder: (context, index) => StickyHeaderBuilder(
             //overlapHeaders: true,
             builder: (BuildContext context, double stuckAmount) {
               stuckAmount = 1 - stuckAmount.clamp(0, 1);
               return Container(
                 width: double.infinity,
                 color: CustomColors.whiteAppBar,
                 height: 60,
                 child:  Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(Classi.classi[index], style: Theme.of(context).textTheme.headline6),
                   ],
                 ),
               );
             },
             content:Consumer<Accademia>(
               builder: (context, accademia, child) {
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ListView(
                     shrinkWrap: true,
                     physics: const NeverScrollableScrollPhysics(),
                     children:  [
                       for (var allievo in accademia.allievi[Classi.classi[index]]!)
                         AllievoTile(allievo)
                     ],
                   ),
                 );
               }

             ),
           )
       ),
     ),

    );

  }

}



class SegmentedControl extends StatefulWidget with PreferredSizeWidget {

  int selectedIndex = 0;
  @override
  State<StatefulWidget> createState() {
     return SegmentedControlState();
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);

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
                      child: Center(child: Text(Classi.classi[index], style: selected? Theme.of(context).textTheme.bodyText1:Theme.of(context).textTheme.bodyText2 )),
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
        child: Text(widget.title)
      ),
    );
  }
}
