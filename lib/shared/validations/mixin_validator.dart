mixin ValidationMixin {
  final RegExp nameRegExp = RegExp(r'^[a-zA-ZÀ-ÿ ]+$');
  isValidName(value) {
    if (value.isEmpty) {
      return 'Por favor, digite seu nome.';
    } else if (!nameRegExp.hasMatch(value)) {
      return 'Por favor, insira caracteres válidos.';
    } else if (value.length <= 3) {
      return 'Nome tem que ter no minimo 4 caracteres.';
    }
    return null;
  }

  isValidEmail(value) {
    if (value.isEmpty) {
      return 'Insira um E-mail.';
    } else if (!value.contains('@')) {
      return 'O E-mail deve conter o simbolo "@".';
    } else if (!value.contains('.com')) {
      return 'O E-mail deve conter o ".com" no final.';
    }
    return null;
  }

  isValidPassword(value) {
    if (value.isEmpty) {
      return 'Informe uma senha.';
    } else if (value.length < 8) {
      return 'A senha deve ter no minimo 8 caracteres.';
    }
    return null;
  }
}
