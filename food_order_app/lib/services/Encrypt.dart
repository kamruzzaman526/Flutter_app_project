import 'dart:math';

void main() {
  // Define the string to encrypt.
  String string = "This is a string";

  // Define the encryption key.
  int key = 3;

  // Encrypt the string.
  String encrypted = "";
  for (int i = 0; i < string.length; i++) {
    int character = string.codeUnitAt(i);
    int encryptedCharacter = character + key;
    if (encryptedCharacter > 122) {
      encryptedCharacter -= 26;
    }
    encrypted += String.fromCharCode(encryptedCharacter);
  }

  // Print the encrypted string.
  print(encrypted);
}