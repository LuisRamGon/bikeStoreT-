import 'package:firebase_auth/firebase_auth.dart';

import '../firebase/auth_request.dart';

class Authentication{

  final _auth = FirebaseAuth.instance;

  Future<AuthenticationRequest> createUser({String email = "", String password = ""}) async {

    AuthenticationRequest authenticationRequest = AuthenticationRequest();

    try{
      authenticationRequest.succes = true;
    }
    catch(e){
      _mapErrorMessage(authenticationRequest, e.toString());
    }
    return authenticationRequest;
  }

  Future<void> resetPassword({required String email}) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  Future<AuthenticationRequest> logingUser({String email = "", String password = ""}) async {

    AuthenticationRequest authenticationRequest = AuthenticationRequest();

    try{
      authenticationRequest.succes = true;
    }
    catch(e){
      _mapErrorMessage(authenticationRequest, e.toString());
    }
    return authenticationRequest;
  }

  Future<User?> getCurrentUser() async{

    try {
      var user = _auth.currentUser;
      return user;
    }
    catch(e){
      print(e);
    }

    return null;
  }

  Future<bool> singOut() async {
    try{
      await _auth.signOut();
      return false;
    }
    catch(e){
      print(e);
      return true;
    }
  }

  void _mapErrorMessage(AuthenticationRequest authenticationRequest, String code){
    switch(code){
      case 'ERROR_USER_NOT_FOUND':
        authenticationRequest.errorMessage = "Usuario no encontrado";
        break;

      case 'ERROR_WRONG_PASSWORD':
        authenticationRequest.errorMessage = "Contraseña inválida";
        break;

      case 'ERROR_NETWORK_REQUEST_FAILED':
        authenticationRequest.errorMessage = "Error de red";
        break;

      case 'ERROR_EMAIL_ALREADY_IN_USE':
        authenticationRequest.errorMessage = "El usuario ya está registrado";
        break;

      case 'ERROR_INVALID_EMAIL':
        authenticationRequest.errorMessage = "Verifique que su correo esté escrito correctamente";
        break;

      default:
        authenticationRequest.errorMessage = code;
        break;
    }
  }
}

