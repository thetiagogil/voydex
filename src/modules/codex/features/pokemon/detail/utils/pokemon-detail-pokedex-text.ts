import type { Game, PokemonPokedexText } from "@/modules/reference/types";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";

/* One entry the open game's Pokédex gives: its text and the versions that say it. */
export type PokemonDetailPokedexEntryText = {
  /* "Sword", or "Red" and "Blue" when both say the same. */
  gameNames: string[];
  text: string;
};

/*
 * What the open group's games say about a form: each version's row, the
 * form's own or its species' default form's, with versions that share a
 * text folded into one entry, in the games' order.
 */
export const selectPokemonDetailPokedexTexts = ({
  defaultFormId,
  formId,
  games,
  texts,
}: {
  defaultFormId: number;
  formId: number;
  games: readonly Game[];
  texts: readonly PokemonPokedexText[];
}): PokemonDetailPokedexEntryText[] => {
  const entries: PokemonDetailPokedexEntryText[] = [];

  for (const game of games.toSorted(
    (left, right) => left.sort_order - right.sort_order,
  )) {
    const row =
      texts.find(
        (text) => text.form_id === formId && text.game_id === game.id,
      ) ??
      texts.find(
        (text) => text.form_id === defaultFormId && text.game_id === game.id,
      );

    if (!row) continue;

    const gameName = getGameShortName(game.name);
    const same = entries.find((entry) => entry.text === row.entry_text);

    if (same) {
      same.gameNames.push(gameName);
    } else {
      entries.push({ gameNames: [gameName], text: row.entry_text });
    }
  }

  return entries;
};
