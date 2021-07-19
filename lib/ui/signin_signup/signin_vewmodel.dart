import 'package:get/get.dart';
import 'package:awesome_chat/ext.dart';

class SigninViewModel extends GetxController {
  Rx<String?> errorEmail = "".obs;
  Rx<String?> errorPw = "".obs;
  Rx<bool> activeLoginButton = false.obs;

  void isValidateEmail(String? email, String? pw) {
    if (email != null && email.isValidEmail()) {
      errorEmail.value = "";
    } else {
      errorEmail.value = "Check your email";
    }
    isActiveLoginButton(email, pw);
  }

  void isValidatePassword(String? email, String? pw) {
    if (pw != null && pw.isValidPassword()) {
      errorPw.value = "";
    } else {
      errorPw.value = "Độ dài tối thiểu 8 ký tự\n" +
          "Chứa ít nhất một chữ cái thường (a-z)," +
          "\nmột chữ cái hoa (A-Z) và một chữ số (0-9)";
    }
    isActiveLoginButton(email, pw);
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
