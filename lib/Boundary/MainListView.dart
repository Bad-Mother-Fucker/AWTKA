
import 'package:awtka/Boundary/AllievoTIle.dart';
import 'package:awtka/Entity/Accademia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
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
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey>  _keys = [GlobalKey(),GlobalKey(),GlobalKey(),GlobalKey(),GlobalKey(),GlobalKey()];
  int selectedIndex = 0;
  var allievoMock = Allievo("Nome", "Cognome", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", maglia: Maglie.nera, grado: 12 );
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: CustomColors.backgroundBlack,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppBar(
            toolbarHeight: 100,
            elevation: 1,
            backgroundColor: CustomColors.backgroundBlack,
            title: TitleView(),
            bottom: SegmentedControl(_scrollController,_keys)
        ),
      ),

     body: SingleChildScrollView(
       controller: _scrollController,
       child: Container(
         color: CustomColors.backgroundBlack,
         child: Column(
           children: [
             for (String c in Classi.classi)
               StickyHeaderBuilder(
                   builder: (BuildContext context, double stuckAmount) {
                     stuckAmount = 1 - stuckAmount.clamp(0, 1);
                     return Container(
                       decoration: const BoxDecoration(
                         color:  CustomColors.backgroundBlack,
                         gradient: LinearGradient(
                           colors: [CustomColors.backgroundBlack, CustomColors.backgroundBlack80],
                         ),
                       ),
                       width: double.infinity,
                       height: 60,
                       child:  Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 8),
                         child: Align(
                             alignment: Alignment.bottomLeft,
                             child: Text(c, style: Theme.of(context).textTheme.headline6)
                         ),
                       ),
                     );
                   },
                   content: Consumer<Accademia>(
                       builder: (context, accademia, child) {
                         int index = Classi.classi.indexOf(c);
                         return Padding(
                           key: _keys[index],
                           padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 17),
                           child: ListView.separated(
                             itemCount: accademia.allievi[c]!.length,
                             shrinkWrap: true,
                             physics: const NeverScrollableScrollPhysics(),
                             itemBuilder:  (context, idx) => AllievoTile(accademia.allievi[c]!.elementAt(idx)),
                             separatorBuilder: (context, idx) => const SizedBox(height:19)
                           ),
                         );
                       }
                   ),
               )
           ],
         ),
       )
     )

    );

  }

}



class SegmentedControl extends StatefulWidget with PreferredSizeWidget{

  final ScrollController? _scrollViewController;
  final List<GlobalKey> _keys;
  int selectedIndex = 0;

  @override
  State<StatefulWidget> createState() {
     return SegmentedControlState();
  }

  SegmentedControl(this._scrollViewController, this._keys,{Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

}


class SegmentedControlState extends State<SegmentedControl> {

  var offsets = List<double>.empty(growable:true);

  @override
  void initState() {

    super.initState();
  }


  @override
  Widget build(BuildContext context) {


  //to automatically select scroll controller card while scrolling
  /*
    widget._scrollViewController?.addListener(() {
      for(var k in widget._keys){
        if(k.currentContext != null) {
          var box = k.currentContext!.findRenderObject() as RenderBox;
          if(box.hasSize) {
            var yOffset = box.localToGlobal(Offset.zero).dy;
            offsets.add(yOffset);
          }

        }
      }
      setState((){
        if (offsets[0] > 190 && offsets[0] < 220){
            widget.selectedIndex = 0;
        } else if(offsets[1] > 190 && offsets[1] < 220 ){
            widget.selectedIndex =1;
        }else if(offsets[2] > 190 && offsets[2] < 220 ){
          widget.selectedIndex =2;
        }else if(offsets[3] > 190 && offsets[3] < 220 ){
          widget.selectedIndex =3;
        }else if(offsets[4] > 190 && offsets[4] < 220 ){
          widget.selectedIndex =4;
        }else if(offsets[5] > 190 && offsets[5] < 220 ){
          widget.selectedIndex =5;
        }
      });

    });*/


    return SizedBox(
      height: 45.0,
      child: Container(
        color: CustomColors.materialBackgroundBlack,
        child: Center(
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (context, index) {
              bool selected = widget.selectedIndex == index-1;
              return index == 0 || index == 7 ? Spaces.horizontal12:
               Center(
                    child: GestureDetector(
                      onTap: () => setState((){
                        widget.selectedIndex = index -1;
                        widget._scrollViewController?.position.ensureVisible(widget._keys[index-1].currentContext!.findRenderObject()!,alignment: 0.3 ,duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                      }),
                      child: AspectRatio(
                        aspectRatio: 2.6,
                        child: Card (
                          color: selected ? CustomColors.mainRed: CustomColors.secondaryBlack,
                          child: Center(child: Text(Classi.classi[index-1], style:Theme.of(context).textTheme.bodyText1)),
                        ),
                      ),
                    )
                );
            },
          ),
        ),
      ),
    );
  }

  //TODO: Calculate position to scroll to when a card is tapped
  double calculatePosition(int classIndex){
    if (classIndex == 0) return 0.0;
     return 0.0;
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



class TitleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Align(
            alignment: Alignment.bottomLeft,
            child: Text("Allievi", style: Theme.of(context).textTheme.headline4)
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: navigateToAddStudent,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                  backgroundColor: CustomColors.mainRed
                ),
                child: const Icon(Icons.add, color: Colors.black),
            ),
            ElevatedButton(
              onPressed: showSearchBar,
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                  backgroundColor: CustomColors.secondaryBlack
              ),
              child: const Icon(Icons.search),
            )
          ],
        )
      ],
    );
  }


  void showSearchBar() {}

  void navigateToAddStudent() {

  }

}