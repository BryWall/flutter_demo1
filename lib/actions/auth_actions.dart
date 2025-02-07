import 'package:flutter/material.dart';
import 'package:flutter_redux_boilerplate/models/app_state.dart';
import 'package:flutter_redux_boilerplate/models/product.dart';
import 'package:flutter_redux_boilerplate/models/book.dart';
import 'package:flutter_redux_boilerplate/models/user.dart';
import 'package:redux/redux.dart';

class UserLoginRequest {
  final BuildContext context;
  final String username;
  final String password;

  UserLoginRequest(this.context, this.username, this.password);
}

class UserLoginSuccess {
  final User user;

  UserLoginSuccess(this.user);
}

class UserLoginFailure {
  final String error;

  UserLoginFailure(this.error);
}

class UserLogout {}

final Function logout = (BuildContext context) {
  return (Store<AppState> store) {
    store.dispatch(new UserLogout());
    Navigator.of(context).pushNamedAndRemoveUntil('/login', (_) => false);
  };
};

class GetProductRequest {}

class GetProductRequestSuccess {
  Product product;

  GetProductRequestSuccess(this.product);
}

class GetProductRequestFailure {
  final String error;

  GetProductRequestFailure(this.error);
}

class GetBookRequest {}

class GetBookRequestSuccess {
  Book book;

  GetBookRequestSuccess(this.book);
}

class GetBookRequestFailure {
  final String error;

  GetBookRequestFailure(this.error);
}