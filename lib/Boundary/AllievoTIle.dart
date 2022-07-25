
import 'package:flutter/material.dart';

import '../Entity/Allievo.dart';

class AllievoTile extends StatelessWidget {
  Allievo allievo;

  AllievoTile(this.allievo,{Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person),
      title: Text("${allievo.nome} ${allievo.cognome}"),
      subtitle: Row(
        children: [
          const Text('Maglia: '),
          colorCircle(allievo.maglia!),
          Text("  ${allievo.grado ?? 0}º grado allievo")
        ],
      ),
    );
  }

  Widget colorCircle(Color c){
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: c,
        shape: BoxShape.circle,
      ),
    );
  }

}

