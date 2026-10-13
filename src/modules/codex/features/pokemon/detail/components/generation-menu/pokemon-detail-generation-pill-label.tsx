import type { PokemonDetailGenerationNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";
import { getGameShortName } from "@/modules/codex/features/games/shared/utils/game-names";

/* "VIII", and on the generation you're reading, the game too: "VIII · Sword". */
export const PokemonDetailGenerationPillLabel = ({
  generation,
}: {
  generation: PokemonDetailGenerationNavigationItem;
}) => {
  const activeGame = generation.isActive
    ? generation.games.find((game) => game.isActive)
    : undefined;

  return (
    <span className="max-w-52 truncate">
      <span className="sr-only">Generation </span>
      {generation.label}
      {activeGame ? ` · ${getGameShortName(activeGame.name)}` : null}
    </span>
  );
};
