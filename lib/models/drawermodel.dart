class DrawerMenu {
  String? id;
  String? firstName;
  String? lastName;
  String? photo;
  String? email;
  String? phoneNumber;
  List<MenuItems>? menuItems;

  DrawerMenu(
      {this.id,
        this.firstName,
        this.lastName,
        this.photo,
        this.email,
        this.phoneNumber,
        this.menuItems});

  DrawerMenu.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    photo = json['photo'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    if (json['menuItems'] != null) {
      menuItems = <MenuItems>[];
      json['menuItems'].forEach((v) {
        menuItems!.add(new MenuItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['photo'] = this.photo;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    if (this.menuItems != null) {
      data['menuItems'] = this.menuItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MenuItems {
  String? title;
  String? images;
  List<Sublist>? sublist;

  MenuItems({this.title, this.images, this.sublist});

  MenuItems.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    images = json['images'];
    if (json['sublist'] != null) {
      sublist = <Sublist>[];
      json['sublist'].forEach((v) {
        sublist!.add(new Sublist.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['images'] = this.images;
    if (this.sublist != null) {
      data['sublist'] = this.sublist!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sublist {
  String? title;
  String? images;

  Sublist({this.title, this.images});

  Sublist.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    images = json['images'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['images'] = this.images;
    return data;
  }
}
DrawerMenu drawerMenu = DrawerMenu();
