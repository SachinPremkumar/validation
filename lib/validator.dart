String? emailValidation(String value) {
  if (value.isEmpty) {
    return "Please Enter Email Id";
  }
  if (value.isNotEmpty) {
    final RegExp emailValidator =
        RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    if (!emailValidator.hasMatch(value)) {
      return "Please Enter validEmail Id";
    }
  }
  return null;
}

String? passwordValidation(String value) {
  if (value.isEmpty) {
    return "Please Enter Password";
  }
  if (value.isNotEmpty) {
    final hasLetters = RegExp(r'[a-zA-Z]').hasMatch(value);
    final hasNumbers = RegExp(r'[0-9]').hasMatch(value);
    if (value.length < 8) {
      return "Password should be atleast 8 charcters";
    } else if (!hasLetters) {
      return "Password should be atleast 1 alphabetic";
    } else if (!hasNumbers) {
      return "Password should be atleast 1 number";
    }
  }
  return null;
}
