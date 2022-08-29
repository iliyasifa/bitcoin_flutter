import 'package:bitcoin_flutter/constants/coin_data.dart';
import 'package:bitcoin_flutter/screens/widgets/crypto_card.dart';
import 'package:flutter/material.dart';

class MakeCards extends StatelessWidget {
  const MakeCards({
    Key? key,
    required this.isWaiting,
    required this.coinValues,
    required this.selectedCurrency,
  }) : super(key: key);

  final bool isWaiting;
  final Map<String, String> coinValues;
  final String selectedCurrency;

  @override
  Widget build(BuildContext context) {
    return makeCards();
  }

  Column makeCards() {
    List<CryptoCard> cryptoCards = [];
    for (var crypto in cryptoList) {
      cryptoCards.add(
        CryptoCard(
          value: isWaiting ? '?' : coinValues[crypto]!,
          selectedCurrency: selectedCurrency,
          cyptoCurrency: crypto,
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: cryptoCards,
    );
  }
}
