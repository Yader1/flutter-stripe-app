part of 'pagar_bloc.dart';

@immutable
class PagarState {
  final double montoPagar;
  final String moneda;
  final bool tarjetaActivada;
  final TarjetaCredito? tarjeta;

  const PagarState({
    this.montoPagar = 375.00, 
    this.moneda = 'USD', 
    this.tarjetaActivada = false, 
    this.tarjeta
  });

  PagarState copyWith({
    double? montoPagar,
    String? moneda,
    bool? tarjetaActivada,
    TarjetaCredito? tarjeta,
  }) {
    return PagarState(
      montoPagar: montoPagar ?? this.montoPagar,
      moneda: moneda ?? this.moneda,
      tarjetaActivada: tarjetaActivada ?? this.tarjetaActivada,
      tarjeta: tarjeta ?? this.tarjeta,
    );
  }  
}