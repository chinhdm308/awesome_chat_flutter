import 'package:get/get.dart';
import 'package:awesome_chat/ext.dart';

class SignInController extends GetxController {
  Rx<bool> errorEmail = false.obs;
  Rx<bool> errorPw = false.obs;
  Rx<bool> activeLoginButton = false.obs;

  bool isValidateEmail(String email) {
    if (email.isValidEmail()) {
      return true;
    }
    return false;
  }

  bool isValidatePassword(String pw) {
    if (pw.isValidPassword()) {
      return true;
    }
    return false;
  }

  void isActiveLoginButton(String? email, String? pw) {
    if (email != null && pw != null && email.isNotEmpty && pw.isNotEmpty) {
      activeLoginButton.value = true;
    } else {
      activeLoginButton.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
