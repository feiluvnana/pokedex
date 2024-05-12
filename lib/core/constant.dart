import 'package:flutter/material.dart';

const tTypeColors = {
  "Normal": Color(0xFFA8A77A),
  "Fire": Color(0xFFEE8130),
  "Water": Color(0xFF6390F0),
  "Electric": Color(0xFFF7D02C),
  "Grass": Color(0xFF7AC74C),
  "Ice": Color(0xFF96D9D6),
  "Fighting": Color(0xFFC22E28),
  "Poison": Color(0xFFA33EA1),
  "Ground": Color(0xFFE2BF65),
  "Flying": Color(0xFFA98FF3),
  "Psychic": Color(0xFFF95587),
  "Bug": Color(0xFFA6B91A),
  "Rock": Color(0xFFB6A136),
  "Ghost": Color(0xFF735797),
  "Dragon": Color(0xFF6F35FC),
  "Dark": Color(0xFF705746),
  "Steel": Color(0xFFB7B7CE),
  "Fairy": Color(0xFFD685AD),
};

const tEggGroupColor = {
  "Monster": Color(0xFFD25064),
  "Water1": Color(0xFF97D5FD),
  "Bug": Color(0xFFAAC22A),
  "Flying": Color(0xFFB29AFA),
  "Ground": Color(0xFFE0C068),
  "Fairy": Color(0xFFEE99AC),
  "Plant": Color(0xFF82D25A),
  "Humanshape": Color(0xFFD29682),
  "Water3": Color(0xFF5876BE),
  "Mineral": Color(0xFF7A6252),
  "Indeterminate": Color(0xFF8A8A8A),
  "Water2": Color(0xFF729AFA),
  "Ditto": Color(0xFFA664BF),
  "Dragon": Color(0xFF7A42FF),
  "No-eggs": Color(0xFF333333)
};

const tGenerationColor = {
  "I": Color(0xFF80BB1D),
  "II": Color(0xFFCAC02e),
  "III": Color(0xFF68C1AB),
  "IV": Color(0xFF9072AB),
  "V": Color(0xFF6BAECE),
  "VI": Color(0xFFCB0B4F),
  "VII": Color(0xFFDC5A40),
  "VIII": Color(0xFFAC379E),
  "IX": Color(0xFFE19F3E),
};

const tStatsText = {
  "hp": "❤️ HP",
  "attack": "⚔️ ATK",
  "defense": "🛡️ DEF",
  "special-attack": "🗡️ Sp.ATK",
  "special-defense": "🔰 Sp.DEF",
  "speed": "🎿 SPD",
  "accuracy": "🎯 ACC",
  "evasion": "🪽 EVD",
  "total": "➕ Total"
};

const tIconButtonPadding = 8.0;
const tIconSize = 24.0;
final tPikaLoader =
    Image.asset("assets/images/pika_loader.gif", width: 50, height: 50);

const tPokeApiPaginationLimit = 10;
