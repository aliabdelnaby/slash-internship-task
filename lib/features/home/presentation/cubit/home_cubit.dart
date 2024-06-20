import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';

class FavoriteAddCubit extends Cubit<FavoriteAddState> {
  FavoriteAddCubit(int itemCount)
      : super(
          FavoriteAddState(
            itemStates: List.generate(
              itemCount,
              (_) => const ItemState(
                isFavorite: false,
                isAdded: false,
              ),
            ),
          ),
        );

  void toggleFavorite(int index) {
    final updatedItemStates = List<ItemState>.from(state.itemStates);
    final currentItemState = updatedItemStates[index];
    updatedItemStates[index] = ItemState(
      isFavorite: !currentItemState.isFavorite,
      isAdded: currentItemState.isAdded,
    );
    emit(
      FavoriteAddState(
        itemStates: updatedItemStates,
      ),
    );
  }

  void toggleAddCart(int index) {
    final updatedItemStates = List<ItemState>.from(state.itemStates);
    final currentItemState = updatedItemStates[index];
    updatedItemStates[index] = ItemState(
      isFavorite: currentItemState.isFavorite,
      isAdded: !currentItemState.isAdded,
    );
    emit(
      FavoriteAddState(
        itemStates: updatedItemStates,
      ),
    );
  }
}
