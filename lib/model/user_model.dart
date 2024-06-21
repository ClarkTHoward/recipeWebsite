import 'dart:convert';

List<MockTest> userModelFromJson(String str) =>
    List<MockTest>.from(json.decode(str).map((x) => MockTest.fromJson(x)));
  
MockTest mockTestFromJson(String str) =>
    MockTest.fromJson(json.decode(str));

String userModelToJson(List<MockTest> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MockTest {
  MockTest({
    required this.parent,
  });

  Parent parent;

  factory MockTest.fromJson(Map<String, dynamic> json) => MockTest(
        parent: Parent.fromJson(json["parent"]),
      );

  Map<String, dynamic> toJson() => {
        "parent": parent,
      };
}

class Parent {
  Parent({
    required this.child,
  });

  String child;

  factory Parent.fromJson(Map<String, dynamic> json) => Parent(
        child: json["child"],
      );

  Map<String, dynamic> toJson() => {
        "child": child,
      };
}
