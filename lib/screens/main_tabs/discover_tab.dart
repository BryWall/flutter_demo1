import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_boilerplate/models/app_state.dart';
import 'package:flutter_redux_boilerplate/models/product.dart';
import 'package:flutter_redux_boilerplate/models/book.dart';
import 'package:redux/redux.dart';

class DiscoverTab extends StatelessWidget {
  DiscoverTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, _ViewModel>(
        converter: (Store<AppState> store) {
      _ViewModel vm = _ViewModel.fromStore(store);
      return vm;
    }, builder: (BuildContext context, vm) {
      if (vm.book != null) {
        return new Center(
          child: new Text('Livre: ' + vm.book.title),
        );
      } else {
        return new Center(
          child: new Text('Pas de livre'),
        );
      }
    });
  }
}

class _ViewModel {
  final Product product;
  final Book book;

  _ViewModel({
    @required this.product,
    @required this.book
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return new _ViewModel(product: store.state.product, book: store.state.book);
  }
}
