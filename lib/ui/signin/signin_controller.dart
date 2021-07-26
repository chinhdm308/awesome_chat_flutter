import 'package:awesome_chat/services/authentication_service.dart';
import 'package:awesome_chat/utils/dialog_utils.dart';
import 'package:get/get.dart';
import 'package:awesome_chat/utils/ext.dart';

class SignInController extends GetxController {
  late AuthenticationService _authenticationService;

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

  bool validateEmailAndPassword(String email, String pw) {
    if (isValidateEmail(email) && isValidatePassword(pw)) {
      return true;
    }
    return false;
  }

  void login(String email, String pw) async {
    if (validateEmailAndPassword(email, pw)) {
      showLoaderDialog();
      try {
        var result = _authenticationService.signIn(email: email, password: pw);
        result.then((value) {
          dismissDialog();
          if (value == null) {
            Get.offNamed("/home");
          } else {
            showMessageDialog("Authentication error", value);
          }
        });
      } catch (e) {
        dismissDialog();
      }
    }
  }

  @override
  void onInit() {
    super.onInit();
    _authenticationService = AuthenticationService();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
