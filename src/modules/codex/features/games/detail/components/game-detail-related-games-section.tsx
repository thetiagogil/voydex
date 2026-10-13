import type { CodexGameDetailData } from "@/modules/codex/features/games/detail/types";
import {
  GameShelfCard,
  GameShelfGrid,
} from "@/modules/codex/features/games/shared/components/game-shelf-card";

type GameDetailRelatedGamesSectionProps = {
  data: CodexGameDetailData;
};

/* A grid of game cards, so its heading stays on the page. */
export const GameDetailRelatedGamesSection = ({
  data,
}: GameDetailRelatedGamesSectionProps) => {
  if (!data.relatedGames.length) {
    return null;
  }

  return (
    <section aria-labelledby="related-games-title" className="mt-8 sm:mt-10">
      <div className="flex flex-wrap items-baseline gap-x-3 gap-y-0.5">
        <h2 id="related-games-title" className="text-24">
          Related games
        </h2>
        <span className="text-ink-3 text-14 hidden font-semibold sm:inline">
          Same generation or same region
        </span>
      </div>
      <GameShelfGrid className="mt-4">
        {data.relatedGames.map((card) => (
          <GameShelfCard key={card.game.id} card={card} />
        ))}
      </GameShelfGrid>
    </section>
  );
};
