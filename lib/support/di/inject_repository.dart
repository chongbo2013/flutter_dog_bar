
import 'package:flutter_dog_bar/repository/notice_repository/notice_repository.dart';
import 'package:bsev/bsev.dart';
import 'package:bsev/flavors.dart';
import 'package:flutter_dog_bar/support/conection/api.dart';



injectRepository(Injector injector){

  injector.registerSingleton((i){
    Api _api;
    switch(Flavors().getFlavor()) {
      case Flavor.PROD: _api = Api("http://104.131.18.84");break;
      case Flavor.HOMOLOG: _api = Api("");break;
      case Flavor.DEBUG: _api = Api("");break;
    }
    return _api;
  });

  injector.registerDependency<NoticeRepository>((i)=>NoticeRepositoryImpl(i.getDependency()));

}