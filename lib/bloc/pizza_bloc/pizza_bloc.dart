import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../Models/pizza_model.dart';

part 'pizza_event.dart';
part 'pizza_state.dart';

class PizzaBloc extends Bloc<PizzaEvent, PizzaState> {
  PizzaBloc() : super(PizzaInitial()) {
    on<LoadPizzaCounter>((event, emit) async {
      emit(PizzaLoading(pizzas: Pizza.pizzas));
    });

    on<AddPizza>((event, emit) {
      if (state is PizzaLoading) {
        final state = this.state as PizzaLoading;
        emit(
          PizzaLoading(
            pizzas: List.from(state.pizzas)..add(event.pizza),
          ),
        );
      }
    });

    on<RemovePizza>((event, emit) {
      if (state is PizzaLoading) {
        final state = this.state as PizzaLoading;
        emit(
          PizzaLoading(
            pizzas: List.from(state.pizzas)..remove(event.pizza),
          ),
        );
      }
    });
  }
}
