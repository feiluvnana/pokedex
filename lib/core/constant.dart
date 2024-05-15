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

const tGenerationNumber = {
  "I": 1,
  "II": 2,
  "III": 3,
  "IV": 4,
  "V": 5,
  "VI": 6,
  "VII": 7,
  "VIII": 8,
  "IX": 9,
};

const tStatsColor = {
  "hp": Color(0xFFFD51AA),
  "attack": Color(0xFFfc894b),
  "defense": Color(0xFFfc894b),
  "special-attack": Color(0xFF48EAC8),
  "special-defense": Color(0xFF48EAC8),
  "speed": Color(0xFFBEDC4a),
  "accuracy": Color(0xFFed6ef8),
  "evasion": Color(0xFFfbc559),
  "total": Color(0xFF17babc)
};

const tStatsWidget = {
  "hp": Text("❤️ HP",
      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFD51AA))),
  "attack": Text("⚔️ ATK",
      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFfc894b))),
  "defense": Text("🛡️ DEF",
      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFfc894b))),
  "special-attack": Text("🗡️ Sp.ATK",
      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF48EAC8))),
  "special-defense": Text("🔰 Sp.DEF",
      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF48EAC8))),
  "speed": Text("🎿 SPD",
      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFBEDC4a))),
  "accuracy": Text("🎯 ACC",
      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFed6ef8))),
  "evasion": Text("🪽 EVD",
      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFfbc559))),
  "total": Text("➕ Total",
      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF17babc)))
};

final tStatusConditionRegex = RegExp(
    "($_tBurn|$_tFreeze|$_tParalyze|$_tPoison|$_tSleep|$_tConfuse|fainting|fainted|faint|flinching|flinched|flinch)");
const _tBurn = "burning|burned|burn";
const _tFreeze = "freezing|freezed|freeze";
const _tParalyze = "paralysis|paralyze|paralyzing|paralyzed";
const _tPoison = "poisoning|poisoned|poison";
const _tSleep = "asleep|sleeping|slept|sleep";
const _tConfuse = "confusing|confused|confusion|confuse";

var tStatusConditionMapper = {
  "burn": "The poison condition inflicts damage every turn.",
  "burned": "The poison condition inflicts damage every turn.",
  "burning": "The poison condition inflicts damage every turn.",
  "paralyze":
      "The paralysis status causes a Pokémon to be unable to attack a quarter of the time. Additionally, its Speed is reduced.",
  "paralysis":
      "The paralysis status causes a Pokémon to be unable to attack a quarter of the time. Additionally, its Speed is reduced.",
  "paralyzed":
      "The paralysis status causes a Pokémon to be unable to attack a quarter of the time. Additionally, its Speed is reduced.",
  "paralyzing":
      "The paralysis status causes a Pokémon to be unable to attack a quarter of the time. Additionally, its Speed is reduced.",
  "poison": "The poison condition inflicts damage every turn.",
  "poisoned": "The poison condition inflicts damage every turn.",
  "poisoning": "The poison condition inflicts damage every turn.",
  "flinching":
      "The flinch status prevents a Pokémon from attacking during one turn.",
  "flinched":
      "The flinch status prevents a Pokémon from attacking during one turn.",
  "flinch":
      "The flinch status prevents a Pokémon from attacking during one turn.",
};

const tIconButtonPadding = 8.0;
const tIconSize = 30.0;
final tPikaLoader =
    Image.asset("assets/images/pika_loader.gif", width: 50, height: 50);

const tPokeApiPaginationLimit = 10;
