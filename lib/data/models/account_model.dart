class AccountModel {
  final int id;
  final String name;
  final String phone;

  AccountModel({required this.id, required this.name, required this.phone});
  factory AccountModel.fromJson(Map<String, dynamic> account) {
    return AccountModel(id: account['id'], name: account['name'], phone: account['phone']);
  }
}
