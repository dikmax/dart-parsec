part of parsec;

class Message {
  String _message;
  int _type;

  Message._(this._message, this._type);

  Message.sysUnExpect(String message) : this._(message, 0);
  Message.unExpect(String message) : this._(message, 1);
  Message.expect(String message) : this._(message, 2);
  Message.message(String message) : this._(message, 3);

  bool operator ==(Message message) => this._type == message._type;


  String get message => _message;

  bool get isSysUnExpect => _type == 0;
  bool get isUnExpect => _type == 1;
  bool get isExpect => _type == 2;
  bool get isMessage => _type == 3;
}
