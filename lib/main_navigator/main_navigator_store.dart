import 'package:flutter/cupertino.dart';
import 'package:grupo_3_app/main_navigator/pages_enum.dart';
import 'package:grupo_3_app/modules/add_product/add_product_page.dart';
import 'package:grupo_3_app/modules/home/home_page.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'main_navigator_store.g.dart';

// This is the class used by rest of your codebase
class MainNavigatorStore = MainNavigatorStoreBase with _$MainNavigatorStore;

// The store-class
abstract class MainNavigatorStoreBase with Store {
  MainNavigatorStoreBase();

  @observable
  DrawerPages activePage = DrawerPages.produtos;
  
  pushProductPage(BuildContext context){
    Navigator.of(context).pushNamed(ProductsPage.route);
  }

  pushAddProductPage(BuildContext context){
    Navigator.of(context).pushNamed(AddProductPage.route);
  }


}
