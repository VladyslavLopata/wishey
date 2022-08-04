import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wishey/models/wishlist.dart';
import 'package:wishey/repositories/wish_repository.dart';

part 'wishlist_state.dart';
part 'wishlist_cubit.freezed.dart';

@injectable
class WishlistCubit extends Cubit<WishlistState> {
  WishlistCubit(this._wishRepository) : super(const WishlistState.loading());

  final WishRepository _wishRepository;

  Future<void> initialize(String id) async {
    final wishes = await _wishRepository.getWishlistById(id);
    emit(WishlistState.loaded(wishes ?? []));
  }
}
