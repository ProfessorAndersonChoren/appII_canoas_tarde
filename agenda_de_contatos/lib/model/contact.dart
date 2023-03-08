class Contact {
  String name;
  String lastName;
  String photo;
  String email;
  String phone;
  bool isFavorite;

  Contact({
    required this.name,
    required this.lastName,
    required this.photo,
    required this.email,
    required this.phone,
    this.isFavorite = false,
  });
}
