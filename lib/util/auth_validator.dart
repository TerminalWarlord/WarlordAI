String validateEmail(String email) {
  if (email.contains('@') == false ||
      email.split('@')[1].contains('.') == false) {
    return "Invalid Email Entered!";
  }
  return "";
}

String validatePassword(String pass1, String pass2) {
  if (pass1 != pass2) {
    return "Password doesn't match!";
  }
  if (pass1.isEmpty || pass1.length < 8) {
    return "Invalid Email Entered! Password length must be greater than 8 characters";
  }
  return "";
}

List<String> validateSignUp(String email, String pass1, String pass2) {
  List<String> errors = [];
  if (validateEmail(email).isNotEmpty) {
    errors.add(validateEmail(email));
  }
  if (validatePassword(pass1, pass2).isNotEmpty) {
    errors.add(validatePassword(pass1, pass2));
  }
  return errors;
}
