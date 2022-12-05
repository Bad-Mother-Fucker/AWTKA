
import 'package:awtka/Helpers.dart';
import 'package:flutter/material.dart';

import '../Entity/Allievo.dart';

class AllievoTile extends StatelessWidget {
  Allievo allievo;

  AllievoTile(this.allievo,{Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.8,
      child: Container(
        decoration: BoxDecoration(
          color: CustomColors.secondaryBlack,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
              CustomColors.whiteShadow
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const CircleAvatar(
                    radius:36,
                    backgroundColor:CustomColors.backgroundBlack,
                    child: Icon(Icons.person),
                  ),
                  gradoAllievo(allievo.grado, allievo.maglia)
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left:5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("${allievo.nome ?? "Nome"} ${allievo.cognome ?? "Cognome"} - ", style:Theme.of(context).textTheme.bodyText1),
                    Text(allievo.classe ?? "Leadership", style: Theme.of(context).textTheme.caption)
                  ],
                ),
              ),
              Spaces.vertical5,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  bottomCard(allievo.certificatoValido, allievo.certificatoInScadenza, "Certificato medico"),
                  Spaces.horizontal5,
                  bottomCard(allievo.contrattoValido, allievo.contrattoInScadenza, "Contratto")
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }


  Widget bottomCard(bool conditionOK, bool conditionAlert, String text){
    return Builder(
      builder: (context) {
        return Card(
          color: conditionOK ? conditionAlert? CustomColors.yellow :CustomColors.green : CustomColors.mainRed,
          child: conditionOK ? conditionAlert?
          Padding(padding: const EdgeInsets.all(5),child: Text("$text ⚠️", style: Theme.of(context).textTheme.overline,)) :
          Padding(padding: const EdgeInsets.all(5),child: Text("$text ✅",style: Theme.of(context).textTheme.overline)) :
          Padding(padding: const EdgeInsets.all(5),child: Text("$text ❌",style: Theme.of(context).textTheme.overline)),
        );
      }
    );
  }

  Widget gradoAllievo(int? grado, Color? c){
    return Builder(builder: (context) => Row(
       children: [
          _colorCircle(allievo.maglia?? Colors.white),
          Spaces.horizontal5,
          Text(" ${allievo.grado ?? 1}º grado allievo",style: Theme.of(context).textTheme.bodyText2)
        ],
      )
    );
  }

  Widget _colorCircle(Color c){
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: c,
        shape: BoxShape.circle,
      ),
    );
  }

}

