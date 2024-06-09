class Interview {
  num orderNo;
  String name;
  num unitNo;
  num price;
  num quantity;
  num total;
  String creationDate;

  Interview({
    required this.orderNo,
    required this.name,
    required this.unitNo,
    required this.price,
    required this.quantity,
    required this.total,
    required this.creationDate,
  });

  factory Interview.fromJson(Map<String, dynamic> json) {
    return Interview(
      orderNo: json['orderNo'],
      name: json['name'],
      unitNo: json['unitNo'],
      price: json['price'],
      quantity: json['quantity'],
      total: json['total'],
      creationDate: json['creationDate'],
    );
  }
}
