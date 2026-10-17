import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameCoverImageUrlBySlug } from "@/modules/reference/features/games/data/game-images";

/*
 * A game's cover as a picker option's picture (`SelectControlOption.icon`),
 * so a list of games reads by its boxes. Decorative: the option names it.
 */
export const GameOptionCover = ({
  gameName,
  gameSlug,
}: {
  gameName: string;
  gameSlug: string;
}) => (
  <GameCover
    alt=""
    coverImageUrl={getGameCoverImageUrlBySlug(gameSlug)}
    gameName={gameName}
    gameSlug={gameSlug}
    size="option"
  />
);
