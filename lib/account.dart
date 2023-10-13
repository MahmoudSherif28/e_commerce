class Account {
  String _id;
  String _secretNumber ;
  bool _isActive;
  double _amount;

  Account({
    required String id_,
    required String secretNumber_ ,
    bool isActive_ = false ,
    required double amount_,
  }) :
        _id = id_,
        _secretNumber = secretNumber_,
        _isActive = isActive_,
        _amount=amount_
  {
    id = _id;
    secretNumber = _secretNumber;
    isActive = _isActive;
    amount = _amount;
  }

  set id(id){
    _id = id;
  }
  get id => _id;

  set secretNumber(secretNumber){
    _secretNumber = secretNumber;
  }
  get secretNumber => _secretNumber;

  set isActive(isActive){
    _isActive = isActive;
  }
  get isActive => _isActive;

  set operations(operations){
  }

  set amount(amount){
    _amount = amount;
  }
  get amount => _amount;
}