import 'package:flutter/material.dart';
import 'package:app_comfenalco/components/custom_surfix_icon.dart';
import 'package:app_comfenalco/models/registro.dart';
import 'package:app_comfenalco/providers/usuarios_provider.dart';
import 'package:app_comfenalco/validators/validators.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

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
  _RegistroFormState createState() => _RegistroFormState();
}

class _RegistroFormState extends State<RegistroForm> {
  // final AuthService _auth = AuthService();
  FirebaseAuth _auth = FirebaseAuth.instance;
  final _fromKey = GlobalKey<FormState>();
  final Validators validator = new Validators();
  final userProvider = new UsuariosProvider();
  Usuarios usuario = new Usuarios();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  String _fecha = "";
  TextEditingController _inputFieldFechaController =
      new TextEditingController();
  // para el campo de tipo documento
  String _opcSelectId = 'Tipo Documento';
  List<String> _idTipo = [
    'Tipo Documento',
    'Cedula de Ciudadania',
    'Cedula de Extranjeria',
    'Pasaporte',
    'Tarjeta de Identidad'
  ];
  // para el campo de pais
  String _opcSelectPais = 'País de Origen';
  List<String> _paises = [ 'País de Origen','Colombia', 'Mexico', 'Venezuela', 'Peru'];
  // para la ciudad del valle donde se encuentra
  String _opcSelectCity = 'Ciudad donde habita';
  List<String> _city = ['Ciudad donde habita','Cali', 'Cartago', 'Palmira', 'Jamundi'];
  // para el campo de genero
  String _opcSelectGenero = 'Genero';
  List<String> _genero = ['Genero','Femenino', 'Masculino', 'No especificar'];

  bool _guardando = false;

  @override
  Widget build(BuildContext context) {
    return Form(
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
            height: 20.0,
          )
        ],
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      onSaved: (val) => usuario.nombre = val,
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
      onSaved: (val) => usuario.apellido = val,
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
          value: value,
          child: Text(value),
        );
      }).toList(), //
      onChanged: (opt) {
        setState(() {
          _opcSelectId = opt;
        });
      },
      onSaved: (val) => usuario.idTipoDoc = int.parse(val),
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
      onSaved: (val) => usuario.numeroDocumento = int.parse(val),
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
      onSaved: (val) => usuario.apellido = val,
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

  _selectDate(BuildContext context) async {
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
        //_fecha = fechaSeleccionada.toString();
        var _fechaF = DateFormat.yMMMMd().format(fechaSeleccionada);
        _fecha = _fechaF.toString();
        _inputFieldFechaController.text = _fecha;
      });
    }
  }

  DropdownButtonFormField buildPaisFormField() {
    return DropdownButtonFormField(
      value: _opcSelectPais,
      items: _paises.map((value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(), //
      onChanged: (opt) {
        setState(() {
          _opcSelectPais = opt;
        });
      },
      onSaved: (val) => usuario.idPais = int.parse(val),
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

  DropdownButtonFormField buildCiudadFormField() {
    return DropdownButtonFormField(
      value: _opcSelectCity,
      items: _city.map((value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(), //
      onChanged: (opt) {
        setState(() {
          _opcSelectCity = opt;
        });
      },
      onSaved: (val) => usuario.idCiudad = int.parse(val),
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
      items: _genero.map((value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(), //
      onChanged: (opt) {
        setState(() {
          _opcSelectGenero = opt;
        });
      },
      onSaved: (val) => usuario.idGnr = int.parse(val),
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
      controller: email,
      onSaved: (val) => usuario.email = val,
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
      controller: password,
      onSaved: (val) => usuario.password = val,
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

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    try {
      final User user = (await _auth.createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      ))
          .user;

      print('Se creo');
      Navigator.pushReplacementNamed(context, 'cuentaCreada');
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('El usuario con este email ya existe'),
        ),
      );
      _guardando = false;
      print('No se creo');
    }
  }
}