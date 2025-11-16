import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../models/tarjeta_credito.dart';

part 'pagar_event.dart';
part 'pagar_state.dart';

class PagarBloc extends Bloc<PagarEvent, PagarState> {
  PagarBloc() : super(PagarState());

  @override
  Stream<PagarState> mapEventToState(
    PagarEvent event,
  ) async* {
    if (event is OnSeleccionarTarjetaEvent) {
      yield state.copyWith(
        tarjeta: event.tarjeta,
        tarjetaActivada: true,
      );
    } else if (event is OnDesactivarTarjetaEvent) {
      yield state.copyWith(
        tarjeta: null,
        tarjetaActivada: false,
      );
    }
  }
}
