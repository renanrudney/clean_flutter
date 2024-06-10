import 'package:test/test.dart';

import 'package:CleanFlutter/validation/validators/validators.dart';
import 'package:CleanFlutter/main/factories/factories.dart';

void main() {
  test('Should return the correct validations', () {
    final validations = makeLoginValidations();

    expect(validations, [
      RequiredFieldValidation('email'),
      EmailValidation('email'),
      RequiredFieldValidation('password'),
    ]);
  });
}
