// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_navigator_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainNavigatorStore on MainNavigatorStoreBase, Store {
  late final _$activePageAtom =
      Atom(name: 'MainNavigatorStoreBase.activePage', context: context);

  @override
  DrawerPages get activePage {
    _$activePageAtom.reportRead();
    return super.activePage;
  }

  @override
  set activePage(DrawerPages value) {
    _$activePageAtom.reportWrite(value, super.activePage, () {
      super.activePage = value;
    });
  }

  @override
  String toString() {
    return '''
activePage: ${activePage}
    ''';
  }
}
