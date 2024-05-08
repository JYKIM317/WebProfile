import 'package:webprofile/presentation/starRates/starRates_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final starRatesProvider = ChangeNotifierProvider<StarRatesViewModel>((ref) {
  return StarRatesViewModel();
});
