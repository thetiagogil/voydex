import type { CodexGameDetailData } from "@/modules/codex/features/games/detail/types";
import {
  GameShelfCard,
  GameShelfGrid,
} from "@/modules/reference/features/games/components/game-shelf-card";
import { appRoutes } from "@/config/routes";
import { getGameShelfCardGame } from "@/modules/reference/reference-data";
import { SectionHead } from "@/shared/components/section-head";

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
      <SectionHead
        title="Related games"
        titleId="related-games-title"
        aside="Same generation or same region"
      />
      <GameShelfGrid className="mt-4">
        {data.relatedGames.map((card) => (
          <GameShelfCard
            key={card.game.id}
            game={getGameShelfCardGame(card)}
            href={appRoutes.codexVersionGroup(
              card.versionGroup.slug,
              card.game.slug,
            )}
          />
        ))}
      </GameShelfGrid>
    </section>
  );
};
