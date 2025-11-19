import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import '../bloc/bloc/pagar_bloc.dart';
import '../data/tarjetas.dart';
import '../helpers/helpers.dart';
import '../widgets/total_pay_button.dart';
import 'tarjeta_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagar'),
        actions: [
          IconButton(
            onPressed: (){

            }, 
            icon: Icon(Icons.add)
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            width: size.width,
            height: size.height,
            top: 200,
            child: PageView.builder(
              controller: PageController(
                viewportFraction: 0.9
              ),
              physics: BouncingScrollPhysics(),
              itemCount: tarjetas.length,
              itemBuilder: (_, i) {
                var tarjeta = tarjetas[i];
            
                return GestureDetector(
                  onTap: (){
                    context.read<PagarBloc>().onSeleccionarTarjeta(tarjeta);
                    Navigator.push(context, navegarFadeIn(context, TarjetaPage()));
                  },
                  child: Hero(
                    tag: tarjeta.cardNumber,
                    child: CreditCardWidget(
                      isSwipeGestureEnabled: false,
                      cardNumber: tarjeta.cardNumberHidden, 
                      expiryDate: tarjeta.expiracyDate, 
                      cardHolderName: tarjeta.cardHolderName, 
                      cvvCode: tarjeta.cvv, 
                      showBackView: false, 
                      onCreditCardWidgetChange: (CreditCardBrand brand) {},
                    ),
                  ),
                );
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