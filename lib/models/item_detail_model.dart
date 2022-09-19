class ItemDetailModel {
  String? itemCode;
  String? itemName;
  String? currencyCode;
  String? itemDesc;
  String? barcode;
  String? genderCode;
  String? colorCode;
  String? colorDesc;
  int? itemDimTypeCode;
  String? itemDim1Code;
  String? itemDim1Desc;
  String? itemDim2Code;
  String? itemDim2Desc;
  String? itemDim3Code;
  String? itemDim3Desc;
  int? cat01Code;
  String? cat01Desc;
  int? cat02Code;
  String? cat02Desc;
  int? cat03Code;
  String? cat03Desc;
  String? cat04Code;
  String? cat04Desc;
  String? cat05Code;
  String? cat05Desc;
  int? brandCode;
  String? brandDesc;
  int? qty;
  int? vat;
  int? price1;
  int? price2;
  String? itemPhotoPath;

  ItemDetailModel(
      {this.itemCode,
      this.itemName,
      this.currencyCode,
      this.itemDesc,
      this.barcode,
      this.genderCode,
      this.colorCode,
      this.colorDesc,
      this.itemDimTypeCode,
      this.itemDim1Code,
      this.itemDim1Desc,
      this.itemDim2Code,
      this.itemDim2Desc,
      this.itemDim3Code,
      this.itemDim3Desc,
      this.cat01Code,
      this.cat01Desc,
      this.cat02Code,
      this.cat02Desc,
      this.cat03Code,
      this.cat03Desc,
      this.cat04Code,
      this.cat04Desc,
      this.cat05Code,
      this.cat05Desc,
      this.brandCode,
      this.brandDesc,
      this.qty,
      this.vat,
      this.price1,
      this.price2,
      this.itemPhotoPath});

  ItemDetailModel.fromJson(Map<String, dynamic> json) {
    itemCode = json['ItemCode'];
    itemName = json['ItemName'];
    currencyCode = json['CurrencyCode'];
    itemDesc = json['ItemDesc'];
    barcode = json['Barcode'];
    genderCode = json['GenderCode'];
    colorCode = json['ColorCode'];
    colorDesc = json['ColorDesc'];
    itemDimTypeCode = json['ItemDimTypeCode'];
    itemDim1Code = json['ItemDim1Code'];
    itemDim1Desc = json['ItemDim1Desc'];
    itemDim2Code = json['ItemDim2Code'];
    itemDim2Desc = json['ItemDim2Desc'];
    itemDim3Code = json['ItemDim3Code'];
    itemDim3Desc = json['ItemDim3Desc'];
    cat01Code = json['Cat01Code'];
    cat01Desc = json['Cat01Desc'];
    cat02Code = json['Cat02Code'];
    cat02Desc = json['Cat02Desc'];
    cat03Code = json['Cat03Code'];
    cat03Desc = json['Cat03Desc'];
    cat04Code = json['Cat04Code'];
    cat04Desc = json['Cat04Desc'];
    cat05Code = json['Cat05Code'];
    cat05Desc = json['Cat05Desc'];
    brandCode = json['BrandCode'];
    brandDesc = json['BrandDesc'];
    qty = json['Qty'];
    vat = json['Vat'];
    price1 = json['Price1'];
    price2 = json['Price2'];
    itemPhotoPath = json['ItemPhotoPath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ItemCode'] = this.itemCode;
    data['ItemName'] = this.itemName;
    data['CurrencyCode'] = this.currencyCode;
    data['ItemDesc'] = this.itemDesc;
    data['Barcode'] = this.barcode;
    data['GenderCode'] = this.genderCode;
    data['ColorCode'] = this.colorCode;
    data['ColorDesc'] = this.colorDesc;
    data['ItemDimTypeCode'] = this.itemDimTypeCode;
    data['ItemDim1Code'] = this.itemDim1Code;
    data['ItemDim1Desc'] = this.itemDim1Desc;
    data['ItemDim2Code'] = this.itemDim2Code;
    data['ItemDim2Desc'] = this.itemDim2Desc;
    data['ItemDim3Code'] = this.itemDim3Code;
    data['ItemDim3Desc'] = this.itemDim3Desc;
    data['Cat01Code'] = this.cat01Code;
    data['Cat01Desc'] = this.cat01Desc;
    data['Cat02Code'] = this.cat02Code;
    data['Cat02Desc'] = this.cat02Desc;
    data['Cat03Code'] = this.cat03Code;
    data['Cat03Desc'] = this.cat03Desc;
    data['Cat04Code'] = this.cat04Code;
    data['Cat04Desc'] = this.cat04Desc;
    data['Cat05Code'] = this.cat05Code;
    data['Cat05Desc'] = this.cat05Desc;
    data['BrandCode'] = this.brandCode;
    data['BrandDesc'] = this.brandDesc;
    data['Qty'] = this.qty;
    data['Vat'] = this.vat;
    data['Price1'] = this.price1;
    data['Price2'] = this.price2;
    data['ItemPhotoPath'] = this.itemPhotoPath;
    return data;
  }
}
