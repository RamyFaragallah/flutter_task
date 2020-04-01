
class CourseModel {
  int _id;
  String _title;
  List _img;
  String _interest;
  int _price;
  String _date;
  String _address;
  String _trainerName;
  String _trainerImg;
  String _trainerInfo;
  String _occasionDetail;
  String _latitude;
  String _longitude;
  bool _isLiked;
  bool _isSold;
  bool _isPrivateEvent;
  bool _hiddenCashPayment;
  int _specialForm;
  String _questionnaire;
  String _questExplanation;
  List _reservTypes;
  String _questionnaireFields;
  List _occasionAgenda;

  CourseModel(
      this._id,
      this._title,
      this._img,
      this._interest,
      this._price,
      this._date,
      this._address,
      this._trainerName,
      this._trainerImg,
      this._trainerInfo,
      this._occasionDetail,
      this._latitude,
      this._longitude,
      this._isLiked,
      this._isSold,
      this._isPrivateEvent,
      this._hiddenCashPayment,
      this._specialForm,
      this._questionnaire,
      this._questExplanation,
      this._reservTypes,
      this._questionnaireFields,
      this._occasionAgenda);

  List get occasionAgenda => _occasionAgenda;

  set occasionAgenda(List value) {
    _occasionAgenda = value;
  }

  String get questionnaireFields => _questionnaireFields;

  set questionnaireFields(String value) {
    _questionnaireFields = value;
  }

  List get reservTypes => _reservTypes;

  set reservTypes(List value) {
    _reservTypes = value;
  }

  String get questExplanation => _questExplanation;

  set questExplanation(String value) {
    _questExplanation = value;
  }

  String get questionnaire => _questionnaire;

  set questionnaire(String value) {
    _questionnaire = value;
  }

  int get specialForm => _specialForm;

  set specialForm(int value) {
    _specialForm = value;
  }

  bool get hiddenCashPayment => _hiddenCashPayment;

  set hiddenCashPayment(bool value) {
    _hiddenCashPayment = value;
  }

  bool get isPrivateEvent => _isPrivateEvent;

  set isPrivateEvent(bool value) {
    _isPrivateEvent = value;
  }

  bool get isSold => _isSold;

  set isSold(bool value) {
    _isSold = value;
  }

  bool get isLiked => _isLiked;

  set isLiked(bool value) {
    _isLiked = value;
  }

  String get longitude => _longitude;

  set longitude(String value) {
    _longitude = value;
  }

  String get latitude => _latitude;

  set latitude(String value) {
    _latitude = value;
  }

  String get occasionDetail => _occasionDetail;

  set occasionDetail(String value) {
    _occasionDetail = value;
  }

  String get trainerInfo => _trainerInfo;

  set trainerInfo(String value) {
    _trainerInfo = value;
  }

  String get trainerImg => _trainerImg;

  set trainerImg(String value) {
    _trainerImg = value;
  }

  String get trainerName => _trainerName;

  set trainerName(String value) {
    _trainerName = value;
  }

  String get address => _address;

  set address(String value) {
    _address = value;
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  int get price => _price;

  set price(int value) {
    _price = value;
  }

  String get interest => _interest;

  set interest(String value) {
    _interest = value;
  }

  List get img => _img;

  set img(List value) {
    _img = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  factory CourseModel.fromJson(Map<String, dynamic> item) {
    return CourseModel(
      item["id"],
      item["title"],
      item["img"],
      item["interest"],
      item["price"],
      item["date"],
      item["address"],
      item["trainerName"],
      item["trainerImg"],
      item["trainerInfo"],
      item["occasionDetail"],
      item["latitude"],
      item["longitude"],
      item["isLiked"],
      item["isSold"],
      item["isPrivateEvent"],
      item["hiddenCashPayment"],
      item["specialForm"],
      item["questionnaire"],
      item["questExplanation"],
      item["reservTypes"],      item["questionnaireFields"],
      item["occasionAgenda"],
    );
  }
}

