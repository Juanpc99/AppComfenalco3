import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:app_comfenalco/components/custom_surfix_icon.dart';
import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/models/registro.dart';
import 'package:app_comfenalco/providers/usuarios_provider.dart';
import 'package:app_comfenalco/validators/validators.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
              child: Container(
            height: 0.0,
          )),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 30.0,
            ),
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              children: [
                _titulo(),
                SizedBox(height: 20),
                _descripcion(),
                SizedBox(height: 20),
                EditarForm(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _titulo() {
    return Text(
      'Editar perfil',
      style: TextStyle(
        color: colorPrimario,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _descripcion() {
    return Text(
      "Modifique los campos con sus datos nuevos. ",
      style: TextStyle(
        color: Colors.grey[600],
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class EditarForm extends StatefulWidget {
  @override
  EditarFormState createState() => EditarFormState();
}

class EditarFormState extends State<EditarForm> {
  // final AuthService _auth = AuthService();
  FirebaseAuth _auth = FirebaseAuth.instance;
  final _fromKey = GlobalKey<FormState>();
  final Validators validator = new Validators();
  final userProvider = new UsuariosProvider();
  Usuarios usuario = new Usuarios();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _nombre = false, apellido = false, ciudad = false, genero = false;
  // para la ciudad del valle donde se encuentra
  String _opcSelectCity;
  List _city = List();

  Future cargarCiudades() async {
    final Uri url = Uri.parse('$url_api/getCiudades');

    final resp = await http.get(url);

    var jsonbody = resp.body;
    var ciudades = json.decode(jsonbody);

    setState(() {
      _city = ciudades;
    });
    //print(ciudades);
    return "succes";
  }

  // para el campo de genero
  String _opcSelectGenero;
  List dataGen = List();
  Future cargarGeneros() async {
    final Uri url = Uri.parse('$url_api/getGeneros');

    final resp = await http.get(url);

    var jsonbody = resp.body;
    var generos = json.decode(jsonbody);
    setState(() {
      dataGen = generos;
    });
    //print(generos);
    return "succes";
  }

  @override
  void initState() {
    super.initState();
    cargarGeneros();
    cargarCiudades();
  }

  bool _guardando = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _fromKey,
        child: Column(
          children: [
            editNombre(),
            SizedBox(height: 20),
            buildNameFormField(),
            SizedBox(height: 20),
            editApellido(),
            SizedBox(height: 20),
            buildApellidoFormField(),
            SizedBox(height: 20),
            editCiudad(),
            SizedBox(height: 20),
            buildCiudadFormField(),
            SizedBox(height: 20),
            editGenero(),
            SizedBox(height: 20),
            buildGeneroFormField(),
            SizedBox(height: 20),
            _botonActualizar(context),
            SizedBox(height: 200.0),
          ],
        ),
      ),
    );
  }

  Widget editNombre() {
    return SwitchListTile(
        title: Text(''),
        value: _nombre,
        onChanged: (value) {
          setState(() {
            _nombre = value;
          });
        });
  }

  TextFormField buildNameFormField() {
    if (_nombre == false) {
      return TextFormField(
        enabled: false,
        textCapitalization: TextCapitalization.sentences,
        onChanged: (value) => setState(() {
          usuario.nombre = value;
        }),
        decoration: InputDecoration(
          labelText: "Nombre",
          hintText: 'Ingrese su nombre completo',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/usuario.svg",
          ),
        ),
      );
    } else {
      return TextFormField(
        textCapitalization: TextCapitalization.sentences,
        onChanged: (value) => setState(() {
          usuario.nombre = value;
        }),
        validator: (value) {
          if (validator.isName(value) == true && value != '') {
            return null;
          } else {
            return 'El nombre solo debe contener letras';
          }
        },
        decoration: InputDecoration(
          labelText: "Nombre",
          hintText: 'Ingrese su nombre completo',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/usuario.svg",
          ),
        ),
      );
    }
  }

  Widget editApellido() {
    return SwitchListTile(
        title: Text(''),
        value: apellido,
        onChanged: (value) {
          setState(() {
            apellido = value;
          });
        });
  }

  TextFormField buildApellidoFormField() {
    if (apellido == false) {
      return TextFormField(
        enabled: apellido,
        textCapitalization: TextCapitalization.sentences,
        onChanged: (value) => setState(() {
          usuario.apellido = value;
        }),
        decoration: InputDecoration(
          labelText: "Apellidos",
          hintText: 'Ingrese sus apellidos',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/usuario.svg",
          ),
        ),
      );
    } else {
      return TextFormField(
        enabled: apellido,
        textCapitalization: TextCapitalization.sentences,
        onChanged: (value) => setState(() {
          usuario.apellido = value;
        }),
        validator: (value) {
          if (validator.isName(value) == true && value != '') {
            return null;
          } else {
            return 'El apellido solo debe contener letras';
          }
        },
        decoration: InputDecoration(
          labelText: "Apellidos",
          hintText: 'Ingrese sus apellidos',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/usuario.svg",
          ),
        ),
      );
    }
  }

  Widget editCiudad() {
    return SwitchListTile(
        title: Text(''),
        value: ciudad,
        onChanged: (value) {
          setState(() {
            ciudad = value;
          });
        });
  }

  DropdownButtonFormField buildCiudadFormField() {
    if (ciudad == false) {
      return DropdownButtonFormField(
        items: null,
        validator: (value) {
          if (value == null) {
            return null;
          } else {
            return 'Debe elegir una ciudad';
          }
        },
        decoration: InputDecoration(
          labelText: "Ciudad",
          hintText: 'Ingrese la ciudad donde nacio',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/ubicacion.svg",
          ),
        ),
      );
    } else {
      return DropdownButtonFormField(
        isExpanded: true,
        value: _opcSelectCity,
        items: _city.map((value) {
          // value['ID_CIUDAD'] = 5;

          return DropdownMenuItem(
            value: value['ID_CIUDAD'].toString(),
            child: Text(value['CIUDAD']),
          );
        }).toList(), //
        onChanged: (opt) {
          setState(() {
            _opcSelectCity = opt;
            usuario.idCiudad = int.parse(opt);
          });
        },
        validator: (value) {
          if (value != null) {
            return null;
          } else {
            return 'Debe elegir una ciudad';
          }
        },
        decoration: InputDecoration(
          labelText: "Ciudad",
          hintText: 'Ingrese la ciudad donde nacio',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/ubicacion.svg",
          ),
        ),
      );
    }
  }

  Widget editGenero() {
    return SwitchListTile(
        title: Text(''),
        value: genero,
        onChanged: (value) {
          setState(() {
            genero = value;
          });
        });
  }

  DropdownButtonFormField buildGeneroFormField() {
    if (genero == false) {
      return DropdownButtonFormField(
        items: null,
        validator: (value) {
          if (value == null) {
            return null;
          } else {
            return 'Debe elegir un genero';
          }
        },
        decoration: InputDecoration(
          labelText: "Genero",
          hintText: 'Seleccione su genero',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/genero.svg",
          ),
        ),
      );
    } else {
      return DropdownButtonFormField(
        value: _opcSelectGenero,
        items: dataGen.map((list) {
          return DropdownMenuItem(
            value: list['ID_GENERO'].toString(),
            child: Text(list['GENERO']),
          );
        }).toList(), //
        validator: (value) {
          if (value != null) {
            return null;
          } else {
            return 'Debe elegir un genero';
          }
        },
        onChanged: (opt) {
          setState(() {
            _opcSelectGenero = opt;
            usuario.idGnr = int.parse(opt);
          });
        },

        decoration: InputDecoration(
          labelText: "Genero",
          hintText: 'Seleccione su genero',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/genero.svg",
          ),
        ),
      );
    }
  }

  Widget _botonActualizar(BuildContext context) {
    return Container(
      height: 50.0,
      width: 330.0,
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
      margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: FlatButton(
          height: 45.0,
          onPressed: () {
            if (_fromKey.currentState.validate()) {
              Navigator.pushReplacementNamed(context, 'datosModificados');
            }
            //async {
            //await _actualizar();
          },
          child: Text(
            'Actualizar',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: colorPrimarioClaro),
          ),
          color: colorPrimario,
        ),
      ),
    );
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
