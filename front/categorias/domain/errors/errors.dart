abstract class CategoriaError implements Exception {}

class CategoriaisRedeemed implements CategoriaError {
  CategoriaisRedeemed({this.messageError});

  final String messageError;
}

class CategoriaDatasourceError implements CategoriaError {
  CategoriaDatasourceError({this.messageError});

  final String messageError;
}

class CategoriaRedeemedError implements CategoriaError {
  CategoriaRedeemedError({this.messageError});

  final String messageError;
}

class InvalidIdError implements CategoriaError {
  InvalidIdError({this.messageError});

  final String messageError;
}
