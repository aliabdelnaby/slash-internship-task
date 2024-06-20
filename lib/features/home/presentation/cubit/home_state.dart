import 'package:equatable/equatable.dart';

class FavoriteAddState extends Equatable {
  final List<ItemState> itemStates;

  const FavoriteAddState({required this.itemStates});

  @override
  List<Object> get props => [itemStates];
}

class ItemState extends Equatable {
  final bool isFavorite;
  final bool isAdded;

  const ItemState({required this.isFavorite, required this.isAdded});

  @override
  List<Object> get props => [isFavorite, isAdded];
}
