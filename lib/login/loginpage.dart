import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xmplaressflutter/auth_provider.dart';
enum FormType {
  login
}
class Login extends StatefulWidget {
  Login({this.onSignedIn});
  final VoidCallback onSignedIn;
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}
class _LoginPageState extends State<Login>{
  final formKey = GlobalKey<FormState>();

  String _email;
  String _password;
  FormType _formType = FormType.login;
  bool validateAndSave(){
    final form=formKey.currentState;
    if(form.validate()) {
      form.save();
      return true;
    }
    else {return false;
    }

  }
  void validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        var auth = AuthProvider.of(context).auth;
        if (_formType == FormType.login) {
          String userId =
          await auth.signInWithEmailAndPassword(_email, _password);
          print('Signed in: $userId');
        } else {
          String userId = await auth
              .createUserWithEmailAndPassword(_email, _password);
          print('Registered user: $userId');
        }
        widget.onSignedIn();
      } catch (e) {
        print('Error: $e');
      }
    }
  }

  void moveToLogin() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
       body: new Container
         (
         decoration: BoxDecoration(
           image: DecorationImage(image: AssetImage("assets/backgroundcolor.png"),
               fit: BoxFit.cover,
           )
         ),
         child: new Form(
           key: formKey,
           child: new ListView(
             shrinkWrap: true,
             children: <Widget>[
               _sizedBox(50.0),
               _logo(),
               _sizedBox(100.0),
               _emailInput(),
               _sizedBox(15.0),
               _passwordInput(),
               _sizedBox(30.0),
               _submitButton(),
               _label(),
               // UI Components here
             ],
           ),
         )
       )
    );
  }
  Widget _logo() {
    return new Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/xmplarlogo.png'),
      ),
    );
  }
  Widget _emailInput() {
    return new TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: new InputDecoration(
          hintText: 'Email',
          icon: new Icon(
            Icons.mail,
            color: Colors.grey,
          )),
      validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
      onSaved: (value) => _email = value,
    );
  }

  Widget _passwordInput() {
    return new TextFormField(
      obscureText: true,
      autofocus: false,
      decoration: new InputDecoration(
          hintText: 'Password',
          icon: new Icon(
            Icons.lock,
            color: Colors.grey,
          )),
      validator: (value) =>
      value.isEmpty ? 'Password can\'t be empty' : null,
      onSaved: (value) => _password = value,
    );
  }
  Widget _sizedBox(_height) {
    return new SizedBox(height: _height);
  }
  Widget _submitButton() {
      return
        new Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: new Material(
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.blueAccent.shade100,
                elevation: 5.0,
                child: new MaterialButton(
                  minWidth: 200.0,
                  height: 42.0,
                  color: Colors.blue,
                  child: new Text('Login',
                      style:
                      new TextStyle(fontSize: 20.0, color: Colors.white)),
                  onPressed: validateAndSubmit,
                )));
  }
  Widget _label() {
    new FlatButton(
      child: new Text('Have an account? Sign in',
          style:
          new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300)),
      onPressed: moveToLogin,
    );
  }
  }
