// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_repository_impl.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension AccountRepositoryImplFactory on ServiceCollection {
  void addAccountRepositoryImpl([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<AccountRepositoryImpl>(
      lifetime,
      (provider) => AccountRepositoryImpl(
        provider.getRequired<Dio>(),
        provider.getRequired<AccountRestClient>(),
        provider.getRequired<SharedPreferences>(),
      ),
      true,
    );

    if (registerAliases) {
      addAlias<AccountRepository, AccountRepositoryImpl>(true);
      addAlias<Initializable, AccountRepositoryImpl>(true);
    }
  }
}
