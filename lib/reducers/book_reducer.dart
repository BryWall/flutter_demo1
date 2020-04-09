import 'package:flutter_redux_boilerplate/actions/auth_actions.dart';
import 'package:flutter_redux_boilerplate/models/book.dart';
import 'package:redux/redux.dart';

Reducer<Book> bookReducer = combineReducers([
  new TypedReducer<Book, GetBookRequestSuccess>(userLoginSuccessReducer),
  new TypedReducer<Book, GetBookRequestFailure>(userLoginFailureReducer),
]);

Book userLoginSuccessReducer(
    Book book, GetBookRequestSuccess action) {
  print("Reducer.....");
  return action.book;
}

Book userLoginFailureReducer(
    Book book, GetBookRequestFailure action) {
  return null;
}
