import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'post/account.g.dart';

@freezed
abstract class Account with _$Account {
  const Account._();

  const factory Account({
    required String service,
    required String name,
    required String url,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  static List<Account> getAccountList() {
    return [
      Account(service: 'twitter', name: '_asmz', url: 'https://x.com/_asmz'),
      Account(
        service: 'facebook',
        name: 'asmz0',
        url: 'https://facebook.com/asmz0',
      ),
      Account(service: 'github', name: 'asmz', url: 'https://github.com/asmz'),
      Account(service: 'note', name: 'asmz', url: 'https://note.com/asmz'),
      Account(
        service: 'speakerdeck',
        name: 'asmz',
        url: 'https://speakerdeck.com/asmz',
      ),
      Account(
        service: 'hatenablog',
        name: 'asmz0',
        url: 'https://asmz.hatenablog.jp/',
      ),
    ];
  }
}
