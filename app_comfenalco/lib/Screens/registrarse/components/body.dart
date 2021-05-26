import 'package:app_comfenalco/models/token.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:app_comfenalco/components/custom_surfix_icon.dart';
import 'package:app_comfenalco/models/registro.dart';
import 'package:app_comfenalco/providers/usuarios_provider.dart';
import 'package:app_comfenalco/validators/validators.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../constantes.dart';

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
                RegistroForm(),
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
      'Registrar Cuenta',
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
      "Complete todos los campos con sus datos. ",
      style: TextStyle(
        color: Colors.grey[600],
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class RegistroForm extends StatefulWidget {
  @override
  RegistroFormState createState() => RegistroFormState();
}

class RegistroFormState extends State<RegistroForm> {
  // final AuthService _auth = AuthService();
  FirebaseAuth _auth = FirebaseAuth.instance;
  final _fromKey = GlobalKey<FormState>();
  final Validators validator = new Validators();
  final userProvider = new UsuariosProvider();
  Usuarios usuario = new Usuarios();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _nacionalidad = false;
  Token tokenCel = Token();
  String _fecha = "";
  TextEditingController _inputFieldFechaController =
      new TextEditingController();
  // para el campo de tipo documento
  String _opcSelectId;
  List _idTipo = List();
  Future cargarDocumentos() async {
    final Uri url = Uri.parse('$url_api/getTiposDocumento');

    final resp = await http.get(url);

    var jsonbody = resp.body;
    var documentos = json.decode(jsonbody);

    setState(() {
      _idTipo = documentos;
    });
    //print(documentos);
    return "succes";
  }

  // para el campo de pais
  String _opcSelectPais;
  List _paises = List();
  Future cargarPaises() async {
    final Uri url = Uri.parse('$url_api/getPaises');

    final resp = await http.get(url);

    var jsonbody = resp.body;
    var paises = json.decode(jsonbody);

    setState(() {
      _paises = paises;
    });

    return "succes";
  }

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
    cargarDocumentos();
    cargarPaises();
  }

  bool _guardando = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _fromKey,
        child: Column(
          children: [
            buildNameFormField(),
            SizedBox(height: 20),
            buildApellidoFormField(),
            SizedBox(height: 20),
            buildTipoIDFormField(),
            SizedBox(height: 20),
            buildDocumentoFormField(),
            SizedBox(height: 20),
            buildFechaFormField(),
            SizedBox(height: 20),
            esExtranjero(),
            SizedBox(height: 20),
            buildPaisFormField(),
            SizedBox(height: 20),
            buildCiudadFormField(),
            SizedBox(height: 20),
            buildGeneroFormField(),
            SizedBox(height: 20),
            buildCorreoFormField(),
            SizedBox(height: 20),
            buildPasswordFormField(),
            SizedBox(height: 20),
            _botonRegistrar(context),
            SizedBox(
              height: 200.0,
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildNameFormField() {
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

  TextFormField buildFormField(String label, String texto) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        hintText: texto,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/usuario.svg",
        ),
      ),
    );
  }

  TextFormField buildApellidoFormField() {
    return TextFormField(
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

  DropdownButtonFormField buildTipoIDFormField() {
    return DropdownButtonFormField(
      value: _opcSelectId,
      items: _idTipo.map((value) {
        return DropdownMenuItem(
          value: value['ID_TIPO_DOC'].toString(),
          child: Text(value['DOCUMENTO']),
        );
      }).toList(),
      onChanged: (opt) {
        setState(() {
          _opcSelectId = opt;
          usuario.idTipoDoc = int.parse(opt);
        });
      },
      validator: (value) {
        if (value != null) {
          return null;
        } else {
          return 'Debe elegir un tipo de documento';
        }
      },
      decoration: InputDecoration(
        labelText: "Tipo Documento",
        hintStyle: TextStyle(color: Colors.grey[800], fontSize: 12),
        hintText: 'Seleccione tipo documento',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/identificacion.svg",
        ),
      ),
    );
  }

  TextFormField buildDocumentoFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      validator: (value) {
        final intNumber = int.tryParse(value);
        if (intNumber != null && intNumber >= 9) {
          return null;
        } else {
          return 'Ingrese una cedula valida';
        }
      },
      onChanged: (value) => setState(() {
        usuario.numeroDocumento = int.parse(value);
      }),
      decoration: InputDecoration(
        labelText: "No. Documento",
        hintText: 'Ingrese su documento',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/identificacion.svg",
        ),
      ),
    );
  }

  TextFormField buildFechaFormField() {
    return TextFormField(
      enableInteractiveSelection: false,
      controller: _inputFieldFechaController,
      // validator: (value) {
      // DateTime fecha = DateTime.parse(value);
      // DateTime fechaLimite = DateTime.parse('05-05-2000');
      // if (fecha.isBefore(fechaLimite)) {
      //   return null;
      // } else {
      //   return 'Ingrese una fecha valida';
      // }
      // },
      decoration: InputDecoration(
        labelText: "Fecha de Nacimiento",
        hintText: 'Fecha de Nacimiento',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.perm_contact_calendar),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    //String fechaS = "";
    DateTime fechaSeleccionada = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1930),
      lastDate: new DateTime(2025),
      locale: Locale('es', 'Español'),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.highContrastLight(
              primary: colorVerdeLimon,
              onPrimary: Colors.white,
              surface: colorVerdeLimon,
              onSurface: Colors.black26,
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child,
        );
      },
    );
    if (fechaSeleccionada != null) {
      setState(() {
        // _fecha = fechaSeleccionada.toString();
        var _fechaF = DateFormat.yMMMMd().format(fechaSeleccionada);
        _fecha = _fechaF;
        _inputFieldFechaController.text = _fecha;
      });
    }
  }

  Widget esExtranjero() {
    return SwitchListTile(
        title: Text('¿Es extranjero?'),
        value: _nacionalidad,
        onChanged: (value) {
          setState(() {
            _nacionalidad = value;
          });
        });
  }

  Widget buildPaisFormField() {
    if (_nacionalidad == false) {
      return DropdownButtonFormField(
        items: null,
        decoration: InputDecoration(
          labelText: "País",
          hintText: 'Ingrese su pais de origen',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/planeta.svg",
          ),
        ),
      );
    } else {
      return DropdownButtonFormField(
        value: _opcSelectPais,
        validator: (value) {
          if (value != null) {
            return null;
          } else {
            return 'Debe elegir un pais';
          }
        },
        isExpanded: true,
        items: _paises.map((value) {
          return DropdownMenuItem(
            value: value['ID_PAIS'].toString(),
            child: Text(value['PAIS']),
          );
        }).toList(), //

        onChanged: (opt) {
          setState(() {
            _opcSelectPais = opt;
            usuario.idPais = int.parse(opt);
          });
        },
        decoration: InputDecoration(
          labelText: "País",
          hintText: 'Ingrese su pais de origen',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/planeta.svg",
          ),
        ),
      );
    }
  }

  DropdownButtonFormField buildCiudadFormField() {
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
          usuario.idCiudad = int.parse(opt);
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

  DropdownButtonFormField buildGeneroFormField() {
    return DropdownButtonFormField(
      value: _opcSelectGenero,
      items: dataGen.map((list) {
        return DropdownMenuItem(
          value: list['ID_GENERO'].toString(),
          child: Text(list['GENERO']),
        );
      }).toList(), //
      onChanged: (opt) {
        setState(() {
          _opcSelectGenero = opt;
          usuario.idGnr = int.parse(opt);
        });
      },
      validator: (value) {
        if (value != null) {
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
  }

  TextFormField buildCorreoFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: email,
      onChanged: (value) => setState(() {
        usuario.email = value;
      }),
      validator: (val) {
        if (validator.isEmail(val) == true) {
          return null;
        } else {
          return 'Email invalido';
        }
      },
      decoration: InputDecoration(
        labelText: "Correo",
        hintText: 'Ingrese su correo electronico',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/sobre.svg",
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      controller: password,
      onChanged: (val) => setState(
        () {
          usuario.password = val;
        },
      ),
      validator: (val) => val.length < 5 ? 'Minimo 6 caracteres' : null,
      decoration: InputDecoration(
        labelText: "Contraseña",
        hintText: 'Cree una contraseña',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/candado.svg",
        ),
      ),
    );
  }

  Widget colorCampoTexto(String label, String texto) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 60,
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                  color: colorPrimario.withOpacity(.66),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 0.99),
                    buildFormField(label, texto),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _botonRegistrar(BuildContext context) {
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
            await _register();
          },
          child: Text(
            'Registrar',
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

  Future<void> _register() async {
    if (_fromKey.currentState.validate()) {
      // _fromKey.currentState.save();

      try {
        User user = (await _auth.createUserWithEmailAndPassword(
          email: email.text.trim(),
          password: password.text.trim(),
        ))
            .user;
        if (_nacionalidad == false) {
          usuario.idPais = 49;
        }
        usuario.fechaNacimiento = _inputFieldFechaController.text;
        usuario.idTipoUsr = 1;
        usuario.tokenCel = await FirebaseMessaging.instance.getToken();
        userProvider.crearUsuario(usuario);

        Navigator.pushReplacementNamed(context, 'cuentaCreada');

        userProvider.actualizarToken(tokenCel);
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 40.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text('Este usuario ya se encuentra registrado'),
              ],
            ),
            duration: Duration(seconds: 5),
          ),
        );
        _guardando = false;
        print('No se creo');
      }
    }
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
