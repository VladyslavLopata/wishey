import 'package:wishey/models/wishlist.dart';

abstract class HomeState {}

class HomeLoading implements HomeState {
  const HomeLoading();
}

class HomeLoaded implements HomeState {
  const HomeLoaded(this.wishGroups);
  final List<WishGroup> wishGroups;
}
