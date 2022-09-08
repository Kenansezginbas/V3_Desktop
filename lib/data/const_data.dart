import 'package:v3_desktop/models/retail_customer_model.dart';

class ConstData {
  //sabit adres gelmesi isteniyor. Tüm müşteriler tek bir adreste olacak.
  var constAdress = PostalAddresses(
    addressTypeCode: "1",
    countryCode: "TR",
    stateCode: "TR.EG",
    cityCode: "TR.35",
    districtCode: "TR.03501",
    address: "",
  );
  //tet

  //V3 ERP sabit parametreler
  var modelType = 3;
  var officeCode = "O-2";
  var retailSalePriceGroupCode = "100";
  var identityNum = "11111111111";
  var creditLimit = 0;
  var currencyCode = "TRY";
}
