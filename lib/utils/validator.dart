class Validator {
  static String? validateName(String? value) {
    if (value!.isEmpty) {
      return 'Cannot recieve empty';
    } else if (value.trim().length < 4) {
      return 'Name is too short';
    } else if (value.trim().length > 30) {
      return 'Name is too long';
    } else if (!value.contains(' ')) {
      return 'Enter More than one name';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return 'Email Cannot be Empty';
    }
    if (value.length < 8) {
      return 'Invalid Email Address';
    }
    if (!value.contains('@') || !value.contains('.com')) {
      return 'Invalid Email Address';
    }
    return null;
  }

  static String? validatePhone(String? value) {
    if (value!.isEmpty) {
      return 'Phone Number Cannot be Empty';
    }
    if (value.length < 8) {
      return 'Invalid Phone Number';
    }
    if (value.contains(RegExp(r'[A-Z]')) || value.contains(RegExp(r'[a-z]'))) {
      return 'Invalid Phone Number';
    }
    if (value.contains(RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)'))) {
      return 'Add country code to Number +0123456789';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Password cannot be empty';
    } else if (value.length < 8) {
      return 'Password cannot be less than 8';
    }
    return null;
  }

  /* static bool? validateButton(String? value, String? value2) {
    if (validateName(value) == true || validatePassword(value2) == true) {
      return true;
    }
    return false;
  } */
}
