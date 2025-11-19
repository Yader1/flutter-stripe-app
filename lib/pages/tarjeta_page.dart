import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import '../bloc/bloc/pagar_bloc.dart';
import '../widgets/total_pay_button.dart';

class TarjetaPage extends StatelessWidget {
  const TarjetaPage({super.key});

  @override
  Widget build(BuildContext context) {
    var tarjeta = context.read<PagarBloc>().state.tarjeta!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagar'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            context.read<PagarBloc>().onDesactivarTarjeta();
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Container(),
          Hero(
            tag: tarjeta.cardNumber,
            child: CreditCardWidget(
              cardNumber: tarjeta.cardNumberHidden, 
              expiryDate: tarjeta.expiracyDate, 
              cardHolderName: tarjeta.cardHolderName, 
              cvvCode: tarjeta.cvv, 
              showBackView: false, 
              onCreditCardWidgetChange: (credit){
                        
              }
            ),
          ),
          Positioned(
            bottom: 0,
            child: TotalPayButton()
          )
        ],
      )
    );
  }
}