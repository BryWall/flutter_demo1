import 'package:flutter_redux_boilerplate/actions/auth_actions.dart';
import 'package:flutter_redux_boilerplate/models/app_state.dart';
import 'package:flutter_redux_boilerplate/models/book.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createBookMiddleware() => <Middleware<AppState>>[
      new TypedMiddleware<AppState, GetBookRequest>(getBook),
    ];

final getBook = _getBook();

Middleware<AppState> _getBook() {
  return (Store store, action, NextDispatcher next) async {
    if (action is GetBookRequest) {
      print("Middleware.....");
      //Appel API
      //Recup du produit
      Book livre = new Book("Shining", "Stephen King");

      //Je dispatche vers le reducer afin de le stocker dans le Store
      store.dispatch(new GetBookRequestSuccess(livre));
    }

    next(action);
  };
}
