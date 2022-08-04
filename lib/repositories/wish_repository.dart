import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:wishey/core/api_config.dart';
import 'package:wishey/core/logger.dart';
import 'package:wishey/models/wishlist.dart';

@singleton
class WishRepository {
  WishRepository(this._client);

  final Dio _client;

  Future<List<WishGroup>> getWishes() async {
    try {
      final response = await _client.get(ApiConfig.wishlistsRoute);

      if (response.statusCode != 200) {
        return [];
      }

      final wishlists = response.data['data'].cast<Map<String, dynamic>>();

      final wishlistsMapped = wishlists.map<WishGroup>(WishGroup.fromJson).toList();

      return wishlistsMapped;
    } catch (e) {
      logger.d(e);
      return [];
    }
  }

  Future<List<Wish>?> getWishlistById(String id) async {
    try {
      final response = await _client.get(
        // ignore: prefer_interpolation_to_compose_strings
        ApiConfig.wishlistRoute + '/$id',
      );

      if (response.statusCode != 200) {
        return [];
      }

      final wishlists = response.data['data'].cast<Map<String, dynamic>>();

      final wishlistsMapped = wishlists.map<Wish>(Wish.fromJson).toList();

      return wishlistsMapped;
    } catch (e) {
      logger.d(e);
      return [];
    }
  }
}
