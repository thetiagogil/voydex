import type { CodexGameDetailData } from "@/modules/codex/features/games/detail/types";
import {
  GameShelfCard,
  GameShelfGrid,
} from "@/modules/codex/features/games/shared/components/game-shelf-card";
import { SectionHead } from "@/shared/components/section-head";

type GameDetailRelatedGamesSectionProps = {
  data: CodexGameDetailData;
  /* Your Plays per game, by game slug, for the cards' flags. */
  playCounts?: Readonly<Record<string, number>>;
};

/* A grid of game cards, so its heading stays on the page. */
export const GameDetailRelatedGamesSection = ({
  data,
  playCounts,
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
            card={card}
            playCount={playCounts?.[card.game.slug]}
          />
        ))}
      </GameShelfGrid>
    </section>
  );
};
