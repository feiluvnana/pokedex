final tStatusConditionRegex = RegExp(
    "($_tBurn|$_tFreeze|$_tParalyze|$_tPoison|$_tSleep|$_tConfuse|$_tInfatuate|fainting|fainted|faint|$_tFlinch)",
    caseSensitive: false);
const _tBurn = "burning|burned|burns|burn";
const _tFreeze = "freezing|freezed|freezes|freeze";
const _tParalyze = "paralysis|paralyze|paralyzes|paralyzing|paralyzed";
const _tPoison = "poisoning|poisoned|poisons|poison";
const _tSleep = "asleep|sleeping|slept|sleep";
const _tConfuse = "confusing|confused|confusion|confuse";
const _tFlinch = "flinching|flinched|flinches|flinch";
const _tInfatuate = "infatuation|infatuated|infatuating|infatuates|infatuate";

var tStatusConditionMapper = {
  RegExp(_tConfuse):
      "The confused condition causes a Pokémon to sometimes hurt itself in its confusion instead of executing a selected move.",
  RegExp(_tSleep):
      "The sleep condition causes a Pokémon to be unable to use moves, except Snore and Sleep Talk.",
  RegExp(_tBurn):
      "The burn condition inflicts damage every turn and halves damage dealt by a Pokémon's physical moves.",
  RegExp(_tParalyze):
      "The paralysis status causes a Pokémon to be unable to attack a quarter of the time. Additionally, its Speed is reduced.",
  RegExp(_tPoison): "The poison condition inflicts damage every turn.",
  RegExp(_tFlinch):
      "The flinch status prevents a Pokémon from attacking during one turn.",
  RegExp(_tInfatuate):
      "A Pokémon that is infatuated cannot use moves 50% of the time, even against Pokémon other than the one it is infatuated with."
};
