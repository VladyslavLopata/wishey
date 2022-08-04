import 'dart:convert';

import 'package:http/http.dart';
import 'package:wishey/core/api_config.dart';
import 'package:wishey/models/wishlist.dart';

class WishRepository {
  WishRepository();

  final _client = Client();

  Future<List<WishGroup>> getWishes() async {
    final Response response;
    try {
      response = await _client.get(
        Uri.parse(
          ApiConfig.apiAddress + ApiConfig.wishlistsRoute,
        ),
      );
    } catch (e) {
      return [];
    }

    if (response.statusCode != 200) {
      return [];
    }

    final decoded = jsonDecode(response.body);

    final wishlists = decoded['data'].cast<Map<String, dynamic>>();

    final wishlistsMapped =
        wishlists.map<WishGroup>(WishGroup.fromJson).toList();

    return wishlistsMapped;
  }

  Future<List<Wish>?> getWishlistById(String id) async {
    final Response response;
    try {
      response = await _client.get(
        Uri.parse(
          '${ApiConfig.apiAddress}${ApiConfig.wishlistRoute}/$id',
        ),
      );
    } catch (e) {
      return [];
    }

    if (response.statusCode != 200) {
      return [];
    }

    final decoded = jsonDecode(response.body);

    final wishlists = decoded['data'].cast<Map<String, dynamic>>();

    final wishlistsMapped = wishlists.map<Wish>(Wish.fromJson).toList();

    return wishlistsMapped;
  }
}
