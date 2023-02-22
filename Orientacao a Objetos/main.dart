import 'address.dart';
import 'people.dart';

void main() {
  Address address = Address(
    street: "Rua Alcides Maia",
    city: "Porto Alegre",
    numberOfStreet: "34-A", // Opcional
  );
  People joao = People(
    name: "João Paulo",
    lastName: "Silva da Silva",
    address: address,
  );

  String userData = joao.showData();
  print(userData);
}
