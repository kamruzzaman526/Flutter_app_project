void main() {
  String string = "This is a string";

  // Get the first 6 letters of the string.
  String first6Letters = string.substring(0, 6);

  // Get the rest of the string.
  String restOfString = string.substring(6);

  // Print the results.
  print("The first 6 letters of the string are: $first6Letters");
  print("The rest of the string is: $restOfString");
}
