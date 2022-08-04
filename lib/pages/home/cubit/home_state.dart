part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = LoadingHomeState;
  const factory HomeState.loaded(List<WishGroup> wishlists) = LoadedHomeState;
}
