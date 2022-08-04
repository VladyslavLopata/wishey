import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wishey/models/wishlist.dart';
import 'package:wishey/repositories/wish_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._wishRepository) : super(const HomeState.loading());

  final WishRepository _wishRepository;

  Future<void> initialize() async {
    final wishGroups = await _wishRepository.getWishes();
    emit(HomeState.loaded(wishGroups));
  }
}
