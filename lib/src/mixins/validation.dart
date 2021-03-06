class Validation {
  String? validatePassword(String value) {
    if (value.length < 4) {
      return 'Password Minimal 4 karakter';
    }
    return null;
  }

  String? validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Email tidak valid';
    }
    return null;
  }

  String? validateName(String value) {
    if (value.isEmpty) {
      return 'Nama Lengkap Harus Diisi';
    }
    return null;
  }
}
