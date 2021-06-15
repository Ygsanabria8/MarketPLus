import 'dart:convert';

import 'package:MarketPlus/widgets/ModalLogin.dart';
import 'package:MarketPlus/widgets/ModalRegister.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

class UserService {

  static UserService instance = null;
  static String API = "https://api-market-plus.herokuapp.com/api";
  static var user;
  static List<dynamic> productsList = [];


  static UserService getInstance() {
    if (instance == null) {
      instance = new UserService();
    }
    return instance;
  }

  Future<FirebaseUser> signInWithGoogle() async {
    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    final FirebaseUser user = await _auth.signInWithCredential(credential);
    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);
    final FirebaseUser currentUser = await _auth.currentUser();
    assert(currentUser.uid == user.uid);
    return user;
  }

  void login (String email, String password, BuildContext context) async{

    final data = {
      "email": email,
      "password": password
    };

    final resp = await http.post(API+'/auth/signin',body: data);

    if(resp.statusCode == 200){
      //Login successfully
      Map<String, dynamic> userResp = jsonDecode(resp.body);
      user = userResp;
      Navigator.pushReplacementNamed(context, 'home');
    }else if(resp.statusCode == 401){
      //bad password
      ModalLogin(
          context,
          'assets/img/wrong.png',
          'Tu contraseña no es la correcta, por favor inténtalo de nuevo.'
      );
    }else if(resp.statusCode == 400){
      //User not found
      ModalLogin(
          context,
          'assets/img/wrong.png',
          'El usuario que ha ingresado no se encuentra registrado.'
      );
    }else{
      //anothe error
      ModalLogin(
          context,
          'assets/img/wrong.png',
          'Ha ocurrido un error, por favor inténtalo de nuevo.'
      );
    }
  }

  void register(String email, String password, String name, String lastName, BuildContext context) async{

    final data = {
      "username": name + " " + lastName,
      "email": email,
      "password": password
    };

    final resp = await http.post(API+'/auth/signup',body: data);

    if(resp.statusCode == 200){
      ModalRegister(context, 'assets/img/check.png', 'Te has registrado exitosamente.',
          'INICIAR SESIÓN', () => {Navigator.popUntil(context, ModalRoute.withName('login'))} );
    }else if(resp.statusCode == 400){
      ModalRegister(context, 'assets/img/wrong.png', 'El correo ingresado ya tiene una cuenta activa.',
          'INTENTALO DE NUEVO', () => {Navigator.pop(context)} );
    }
    else{
      ModalRegister(context, 'assets/img/wrong.png', 'Ha ocurrido un error, por favor inténtalo de nuevo.',
          'INTENTALO DE NUEVO', () => {Navigator.pop(context)} );
    }
  }

  dynamic get User{
    return user;
  }

  void addProduct(dynamic product){
    productsList.add(product);
  }

  dynamic get ShopList{
    return productsList;
  }

  void EmptyShopList(List<dynamic> list){
    productsList = list;
  }
}
