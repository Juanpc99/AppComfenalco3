import 'package:app_comfenalco/constantes.dart';
import 'package:flutter/material.dart';

class ListaRequisitosWidget extends StatelessWidget {
  final String atras;
  final dynamic rutas;
  ListaRequisitosWidget({this.atras, this.rutas});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/q.png"),
          fit: BoxFit.cover,
        ),
      ),
      height: size.height,
      width: double.infinity,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          //expandedHeight: 180.0,
          title: Text(
            ' Requisitos',
            //overflow: TextOverflow.ellipsis,
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: true),
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pushNamed(context, atras);
                  });
            },
          ),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: _lista(),
      ),
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);
    //menuProvider.cargarData()

    return FutureBuilder(
      future: rutas,
      initialData: [], //opcional
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.emoji_objects_rounded,
            color: colorAmarillo.withOpacity(.66), size: 40),
        trailing: Icon(Icons.keyboard_arrow_right_outlined,
            color: colorVerdeOscuro, size: 30),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones
        ..add(widgetTemp)
        ..add(Divider(
            height: 0.5, color: Colors.black87, indent: 5, endIndent: 5));
    });
    return opciones;
  }
}
