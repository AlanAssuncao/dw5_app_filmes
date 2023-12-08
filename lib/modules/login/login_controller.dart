import 'package:dw4_app_filmes/application/ui/loader/loader_mixin.dart';
import 'package:dw4_app_filmes/application/ui/messages/messages_mixin.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  Future<void> login() async {
    try {
      loading(true);
      await Future.delayed(const Duration(seconds: 2));
      loading(false);
      Get.offAllNamed('/home');
      message(MessageModel.info(
          title: 'Sucesso', message: 'Login Realizado com Sucesso'));
    } catch (e, s) {
      print(e);
      print(s);
      loading(false);
      message(MessageModel.error(
          title: 'Login Error', message: 'Erro ao Realizar Login'));
    }
  }
}
