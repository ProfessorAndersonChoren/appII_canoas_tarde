import 'address.dart';

class People {
  String name;
  String lastName;
  Address address;

  People({
    required this.name,
    required this.lastName,
    required this.address,
  });

  String showData() {
    return "O senhor(a) $name $lastName reside na ${address.street} n° ${address.numberOfStreet} - ${address.city}";
  }
}
