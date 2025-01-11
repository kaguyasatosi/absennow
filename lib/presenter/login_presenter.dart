// ignore: unused_import
import '../model/user_model.dart';

abstract class LoginViewContract {
  void showLoading();
  void hideLoading();
  void showError(String message);
  void onLoginSuccess();
}

class LoginPresenter {
  final LoginViewContract view;

  LoginPresenter(this.view);

  void login(String phoneNumber, String password) {
    view.showLoading();

    // Simulate an API request
    Future.delayed(const Duration(seconds: 2), () {
      view.hideLoading();

      if (phoneNumber == "12344" && password == "rido") {
        view.onLoginSuccess(); // Login berhasil
      } else {
        view.showError("Nomor handphone atau password salah."); // Login gagal
      }
    });
  }
}
