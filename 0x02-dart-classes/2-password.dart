class Password {
  String password = '';

  bool isValid() {

    // Check password length
    if (password.length < 8 || password.length > 16) return false;

    // Check for uppercase and lowercase letters
    bool hasUppercase = false;
    bool hasLowercase = false;
    for (int i = 0; i < password.length; i++) {
      if (password[i].toUpperCase() != password[i]) hasLowercase = true;
      if (password[i].toLowerCase() != password[i]) hasUppercase = true;
    }

    // Check for numbers
    bool hasNumber = false;
    for (int i = 0; i < password.length; i++) {
      if (int.tryParse(password[i]) != null) hasNumber = true;
    }

    return hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return 'Your Password is: ${password}';
  }
}
