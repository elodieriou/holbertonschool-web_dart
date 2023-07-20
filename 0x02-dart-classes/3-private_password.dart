class Password {
  String _password = '';

  Password({required String password}) : _password = password;

  bool isValid() {

    // Check password length
    if (_password.length < 8 || _password.length > 16) return false;

    // Check for uppercase and lowercase letters
    bool hasUppercase = false;
    bool hasLowercase = false;
    for (int i = 0; i < _password.length; i++) {
      if (_password[i].toUpperCase() != _password[i]) hasLowercase = true;
      if (_password[i].toLowerCase() != _password[i]) hasUppercase = true;
    }

    // Check for numbers
    bool hasNumber = false;
    for (int i = 0; i < _password.length; i++) {
      if (int.tryParse(_password[i]) != null) hasNumber = true;
    }

    return hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return 'Your Password is: ${_password}';
  }
}
