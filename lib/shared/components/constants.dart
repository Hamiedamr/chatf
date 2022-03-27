

import 'package:chatappflutter/modules/login/loginscreen.dart';
import 'package:chatappflutter/shared/components/components.dart';
import 'package:chatappflutter/shared/network/local/cache_helper.dart';

void SignOut(context){

  CacheHelper.RemoveData(key: 'token').then((value) {
    if (value) {
      NavigateAndFinish(context, LoginScreen());
    }
  });

}

void printFullText(String text){
  final pattern=RegExp('.{1,800}');
  pattern.allMatches(text).forEach((element)=>print(element.group(0)));
}

String TOKEN='';

String? uId='';