
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
                  Card(
                    color: allievo.certificatoValido ? allievo.certificatoInScadenza ? Colors.amber :CustomColors.green : CustomColors.mainRed,
                    child: allievo.certificatoValido ? allievo.certificatoInScadenza ?
                    Padding(padding: EdgeInsets.all(5),child: Text("Certificato medico ⚠️", style: Theme.of(context).textTheme.overline,)) :
                    Padding(padding: EdgeInsets.all(5),child: Text("Certificato medico ✅",style: Theme.of(context).textTheme.overline)) :
                    Padding(padding: EdgeInsets.all(5),child: Text("Certificato medico ❌",style: Theme.of(context).textTheme.overline)),
                  ),
                  Spaces.horizontal5,
                  Card(
                    color: allievo.contrattoValido ? allievo.contrattoInScadenza ? Colors.amber :CustomColors.green : CustomColors.mainRed,
                    child: allievo.contrattoValido ? allievo.contrattoInScadenza ?
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Contratto ⚠️",style: Theme.of(context).textTheme.overline),
                    ) :
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Contratto ✅",style: Theme.of(context).textTheme.overline),
                    ) :
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Contratto ❌",style: Theme.of(context).textTheme.overline),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

      ),
    );
    /*return ListTile(
      tileColor: CustomColors.mainRed,
      leading: const Icon(Icons.person),
      title: Text("${allievo.nome} ${allievo.cognome}",style: Theme.of(context).textTheme.bodyText1,),
      subtitle: Row(
        children: [
          Text('Maglia: ',style: Theme.of(context).textTheme.bodyText1),
          colorCircle(allievo.maglia!),
          Text("  ${allievo.grado ?? 0}º grado allievo",style: Theme.of(context).textTheme.bodyText1)
        ],
      ),
    );*/
  }

  Widget gradoAllievo(int? grado, Color? c){
    return Builder(builder: (context) => Row(
       children: [
          _colorCircle(allievo.maglia?? Colors.white),
          Spaces.horizontal5,
          Text(" ${allievo.grado ?? 0}º grado allievo",style: Theme.of(context).textTheme.bodyText2)

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

