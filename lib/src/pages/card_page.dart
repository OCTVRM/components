import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2()
                            ],
                          ),
                        );
                      }
                    
                    Widget  _cardTipo1() {
                      return Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30.0)),
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.photo_album, color:Colors.blue),
                              title: Text('Este es el titulo'),
                              subtitle: Text('Esta es la descripción de los datos que necesitamos mostrar'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                              FlatButton(
                                child: Text('Cancelar'),
                                onPressed: (){},
                              ),
                              FlatButton(
                                child: Text('OK'),
                                onPressed: (){},
                              ),
                            ],)
                          ],
                        ),
                      );
                    }
          
         Widget _cardTipo2() {
           final card = Container(             
              child: Column(
                children: <Widget>[
                  FadeInImage(
                  image: NetworkImage('https://cnet4.cbsistatic.com/img/8OQnCkn6L4qBDrBQzWxHtmGODTk=/2019/11/01/45b3b242-b28b-4b10-ba62-f441c18de3f5/20190620-145842.jpg'),
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 300.0,
                  fit: BoxFit.cover,
                  ),
                  //Image(
                   // 
                  //),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text('No se que poner'))
                ],
              ),
           );

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0)
                )
              ]
              ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: card,
            ),
            );
         }
}