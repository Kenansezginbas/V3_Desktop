class RetailCustomerModel {
  int? modelType;
  String? currAccCode;
  String? firstName;
  String? lastName;
  String? officeCode;
  String? retailSalePriceGroupCode;
  String? identityNum;
  int? creditLimit;
  String? currencyCode;
  List<PostalAddresses>? postalAddresses;
  List<Attributes>? attributes;
  List<Communications>? communications;

  RetailCustomerModel(
      {this.modelType,
      this.currAccCode,
      this.firstName,
      this.lastName,
      this.officeCode,
      this.retailSalePriceGroupCode,
      this.identityNum,
      this.creditLimit,
      this.currencyCode,
      this.postalAddresses,
      this.attributes,
      this.communications});

  RetailCustomerModel.fromJson(Map<String, dynamic> json) {
    modelType = json['ModelType'];
    currAccCode = json['CurrAccCode'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    officeCode = json['OfficeCode'];
    retailSalePriceGroupCode = json['RetailSalePriceGroupCode'];
    identityNum = json['IdentityNum'];
    creditLimit = json['CreditLimit'];
    currencyCode = json['CurrencyCode'];
    if (json['PostalAddresses'] != null) {
      postalAddresses = <PostalAddresses>[];
      json['PostalAddresses'].forEach((v) {
        postalAddresses!.add(new PostalAddresses.fromJson(v));
      });
    }
    if (json['Attributes'] != null) {
      attributes = <Attributes>[];
      json['Attributes'].forEach((v) {
        attributes!.add(new Attributes.fromJson(v));
      });
    }
    if (json['Communications'] != null) {
      communications = <Communications>[];
      json['Communications'].forEach((v) {
        communications!.add(new Communications.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ModelType'] = this.modelType;
    data['CurrAccCode'] = this.currAccCode;
    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['OfficeCode'] = this.officeCode;
    data['RetailSalePriceGroupCode'] = this.retailSalePriceGroupCode;
    data['IdentityNum'] = this.identityNum;
    data['CreditLimit'] = this.creditLimit;
    data['CurrencyCode'] = this.currencyCode;
    if (this.postalAddresses != null) {
      data['PostalAddresses'] =
          this.postalAddresses!.map((v) => v.toJson()).toList();
    }
    if (this.attributes != null) {
      data['Attributes'] = this.attributes!.map((v) => v.toJson()).toList();
    }
    if (this.communications != null) {
      data['Communications'] =
          this.communications!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PostalAddresses {
  String? addressTypeCode;
  String? countryCode;
  String? stateCode;
  String? cityCode;
  String? districtCode;
  String? address;

  PostalAddresses(
      {this.addressTypeCode,
      this.countryCode,
      this.stateCode,
      this.cityCode,
      this.districtCode,
      this.address});

  PostalAddresses.fromJson(Map<String, dynamic> json) {
    addressTypeCode = json['AddressTypeCode'];
    countryCode = json['CountryCode'];
    stateCode = json['StateCode'];
    cityCode = json['CityCode'];
    districtCode = json['DistrictCode'];
    address = json['Address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AddressTypeCode'] = this.addressTypeCode;
    data['CountryCode'] = this.countryCode;
    data['StateCode'] = this.stateCode;
    data['CityCode'] = this.cityCode;
    data['DistrictCode'] = this.districtCode;
    data['Address'] = this.address;
    return data;
  }
}

class Attributes {
  String? attributeTypeCode;
  String? attributeCode;

  Attributes({this.attributeTypeCode, this.attributeCode});

  Attributes.fromJson(Map<String, dynamic> json) {
    attributeTypeCode = json['AttributeTypeCode'];
    attributeCode = json['AttributeCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AttributeTypeCode'] = this.attributeTypeCode;
    data['AttributeCode'] = this.attributeCode;
    return data;
  }
}

class Communications {
  int? communicationTypeCode;
  String? commAddress;

  Communications({this.communicationTypeCode, this.commAddress});

  Communications.fromJson(Map<String, dynamic> json) {
    communicationTypeCode = json['CommunicationTypeCode'];
    commAddress = json['CommAddress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CommunicationTypeCode'] = this.communicationTypeCode;
    data['CommAddress'] = this.commAddress;
    return data;
  }
}
