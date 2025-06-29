// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barcode_scanner_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$barcodeDataSourceHash() => r'786bc25eeb7a868384eae990524453a7e02e5db1';

/// See also [barcodeDataSource].
@ProviderFor(barcodeDataSource)
final barcodeDataSourceProvider =
    AutoDisposeProvider<BarcodeDataSource>.internal(
      barcodeDataSource,
      name: r'barcodeDataSourceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$barcodeDataSourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BarcodeDataSourceRef = AutoDisposeProviderRef<BarcodeDataSource>;
String _$barcodeRepositoryHash() => r'dc0be10d8059795cc147fe4b5ca1d2abff3e83b3';

/// See also [barcodeRepository].
@ProviderFor(barcodeRepository)
final barcodeRepositoryProvider =
    AutoDisposeProvider<BarcodeRepository>.internal(
      barcodeRepository,
      name: r'barcodeRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$barcodeRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BarcodeRepositoryRef = AutoDisposeProviderRef<BarcodeRepository>;
String _$barcodeScannerHash() => r'e8649733690b76b1b91e237a2f75f42cd629c8e9';

/// See also [BarcodeScanner].
@ProviderFor(BarcodeScanner)
final barcodeScannerProvider =
    AutoDisposeAsyncNotifierProvider<
      BarcodeScanner,
      List<BarcodeResultModel>
    >.internal(
      BarcodeScanner.new,
      name: r'barcodeScannerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$barcodeScannerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$BarcodeScanner = AutoDisposeAsyncNotifier<List<BarcodeResultModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
