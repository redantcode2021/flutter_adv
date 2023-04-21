// ignore_for_file: lines_longer_than_80_chars

import 'component_library_localizations.dart';

/// The translations for Indonesian (`id`).
class ComponentLibraryLocalizationsId extends ComponentLibraryLocalizations {
  ComponentLibraryLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get downvoteIconButtonTooltip => 'Downvote';

  @override
  String get upvoteIconButtonTooltip => 'Upvote';

  @override
  String get searchBarHintText => 'journey';

  @override
  String get searchBarLabelText => 'Cari';

  @override
  String get shareIconButtonTooltip => 'Share';

  @override
  String get favoriteIconButtonTooltip => 'Favorite';

  @override
  String get exceptionIndicatorGenericTitle => 'Terdapat error pada aplikasi';

  @override
  String get exceptionIndicatorTryAgainButton => 'Coba Lagi';

  @override
  String get exceptionIndicatorGenericMessage =>
      'Error ditemukan.\nSilahkan, check koneksi internet Anda and coba lagi.';

  @override
  String get genericErrorSnackbarMessage =>
      'Error ditermukan. Silahkan, check koneksi internet Anda.';

  @override
  String get authenticationRequiredErrorSnackbarMessage =>
      'Anda perlu masuk ke aplikasi untuk menjalankan aksi.';
}
