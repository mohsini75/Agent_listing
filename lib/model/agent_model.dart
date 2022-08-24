import 'dart:io';

class Agent_model {
  final String id;
  final String companyName;
  final String category;
  final String contactName;
  final String phone;
  final String website;
  final String email;
  final String info;
  final File imageLogo;
  final bool publish;
  Agent_model({
    required this.id,
    required this.companyName,
    required this.category,
    required this.contactName,
    required this.phone,
    required this.website,
    required this.email,
    required this.info,
    required this.imageLogo,
    required this.publish,
  });

  @override
  String toString() {
    return 'Agent_model(id: $id, company_name: $companyName, category: $category, contact_name: $contactName, phone: $phone, website: $website, email: $email, info: $info, image_logo: $imageLogo, publish: $publish)';
  }

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': id,
  //     'company_name': company_name,
  //     'category': category,
  //     'contact_name': contact_name,
  //     'phone': phone,
  //     'website': website,
  //     'email': email,
  //     'info': info,
  //     'image_logo': image_logo.toMap(),
  //     'publish': publish,
  //   };
  // }

  // factory Agent_model.fromMap(Map<String, dynamic> map) {
  //   return Agent_model(
  //     id: map['id'] ?? '',
  //     company_name: map['company_name'] ?? '',
  //     category: map['category'] ?? '',
  //     contact_name: map['contact_name'] ?? '',
  //     phone: map['phone'] ?? '',
  //     website: map['website'] ?? '',
  //     email: map['email'] ?? '',
  //     info: map['info'] ?? '',
  //     image_logo: File.fromMap(map['image_logo']),
  //     publish: map['publish'] ?? false,
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory Agent_model.fromJson(String source) => Agent_model.fromMap(json.decode(source));
}
