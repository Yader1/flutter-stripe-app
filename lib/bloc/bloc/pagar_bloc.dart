import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../models/tarjeta_credito.dart';

part 'pagar_event.dart';
part 'pagar_state.dart';

class PagarBloc extends Bloc<PagarEvent, PagarState> {
  PagarBloc() : super(PagarState()){
    on<OnSeleccionarTarjetaEvent>((event, emit) {
      emit(state.copyWith(
        tarjeta: event.tarjeta,
        tarjetaActivada: true,
      ));
    });

    on<OnDesactivarTarjetaEvent>((event, emit) {
      emit(state.copyWith(
        tarjeta: null,
        tarjetaActivada: false,
      ));
    });
  }

  void onSeleccionarTarjeta(TarjetaCredito tarjeta) {
    add(OnSeleccionarTarjetaEvent(tarjeta));
  }

  void onDesactivarTarjeta() {
    add(OnDesactivarTarjetaEvent());
  }
}
