import 'dart:convert';
import 'package:app_comfenalco/components/custom_surfix_icon.dart';
import 'package:app_comfenalco/models/registro.dart';
import 'package:app_comfenalco/providers/usuarios_provider.dart';
import 'package:app_comfenalco/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../constantes.dart';

class ActualizarScreen extends StatefulWidget {
  // static String routName = 'actualizar';

  @override
  _ActualizarScreenState createState() => _ActualizarScreenState();
}

class _ActualizarScreenState extends State<ActualizarScreen> {
  // final AuthService _auth = AuthService();
  // FirebaseAuth _auth = FirebaseAuth.instance;
  final _fromKey = GlobalKey<FormState>();
  final Validators validator = new Validators();
  final userProvider = new UsuariosProvider();
  // Usuarios usuarioNuevo = new Usuarios();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _nombre = false, apellido = false, ciudad = false, genero = false;
  // para la ciudad del valle donde se encuentra
  String _opcSelectCity;
  List _city = List();

  Future cargarCiudades() async {
    final Uri url = Uri.parse(
        '$url_api/getCiudadesByDepartamento?departamento=VALLE DEL CAUCA');

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

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final Usuarios usuarios = ModalRoute.of(context).settings.arguments;
    // usuarioNuevo = usuarios;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/fondo2.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          title: Text(
            'Editar perfil',
            style: TextStyle(color: Colors.grey[350]),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: GestureDetector(
            onTap: () {
              final FocusScopeNode focus = FocusScope.of(context);
              if (!focus.hasPrimaryFocus && focus.hasFocus) {
                FocusManager.instance.primaryFocus.unfocus();
              }
            },
            child: _body(usuarios)),
      ),
    );
  }

  Widget _body(Usuarios usuarios) {
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
                _editarForm(usuarios),
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

  Widget _editarForm(Usuarios usuarios) {
    return SingleChildScrollView(
      child: Form(
        key: _fromKey,
        child: Column(
          children: [
            editNombre(),
            SizedBox(height: 20),
            buildNameFormField(usuarios),
            SizedBox(height: 20),
            editApellido(),
            SizedBox(height: 20),
            buildApellidoFormField(usuarios),
            SizedBox(height: 20),
            editCiudad(),
            SizedBox(height: 20),
            buildCiudadFormField(usuarios),
            SizedBox(height: 20),
            editGenero(),
            SizedBox(height: 20),
            buildGeneroFormField(usuarios),
            SizedBox(height: 20),
            _botonActualizar(context, usuarios),
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

  TextFormField buildNameFormField(Usuarios usuarios) {
    if (_nombre == false) {
      return TextFormField(
        enabled: false,
        textCapitalization: TextCapitalization.sentences,
        onChanged: (value) => setState(() {
          usuarios.nombre = value;
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
          usuarios.nombre = value;
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

  TextFormField buildApellidoFormField(Usuarios usuarios) {
    if (apellido == false) {
      return TextFormField(
        enabled: apellido,
        textCapitalization: TextCapitalization.sentences,
        onChanged: (value) => setState(() {
          usuarios.apellido = value;
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
          usuarios.apellido = value;
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

  DropdownButtonFormField buildCiudadFormField(Usuarios usuarios) {
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
        validator: (value) {
          if (value != null) {
            return null;
          } else {
            return 'Debe elegir una ciudad';
          }
        },
        items: _city.map((value) {
          return DropdownMenuItem(
            value: value['idCiudad'].toString(),
            child: Text(value['ciudad']),
          );
        }).toList(), //
        onChanged: (opt) {
          setState(() {
            _opcSelectCity = opt;
            usuarios.idCiudad = int.parse(opt);
          });
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

  DropdownButtonFormField buildGeneroFormField(Usuarios usuarios) {
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
            usuarios.idGnr = int.parse(opt);
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

  Widget _botonActualizar(BuildContext context, Usuarios usuarios) {
    return Container(
      height: 50.0,
      width: 330.0,
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
      margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: FlatButton(
          height: 45.0,
          onPressed: () async {
            if (_fromKey.currentState.validate()) {
              print(usuarios.idUsuario);
              print(usuarios.nombre);
              print(usuarios.email);
              print(usuarios.apellido);
              print(usuarios.fechaNacimiento);
              print(usuarios.idTipoUsr);
              await userProvider.actualizarUsuario(usuarios);
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
