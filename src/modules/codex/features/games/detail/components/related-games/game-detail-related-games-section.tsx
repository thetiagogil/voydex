import { GameDetailSectionCard } from "@/modules/codex/features/games/detail/components/game-detail-section-card";
import { GameDetailRelatedGameCard } from "@/modules/codex/features/games/detail/components/related-games/game-detail-related-game-card";
import { CodexInlineEmpty } from "@/modules/codex/shared/components/codex-inline-empty";
import type { GameDetailData } from "@/modules/reference/types";
import { cn } from "@/shared/utils/cn";

type GameDetailRelatedGamesSectionProps = {
  data: GameDetailData;
};

export const GameDetailRelatedGamesSection = ({
  data,
}: GameDetailRelatedGamesSectionProps) => {
  return (
    <GameDetailSectionCard
      title="Related games"
      showSeparator
      contentClassName="pt-3"
    >
      {data.relatedGames.length ? (
        <div className="-mx-1 overflow-x-auto pb-2 lg:mx-0 lg:overflow-visible lg:pb-0">
          <div className="flex gap-3 px-1 lg:grid lg:grid-cols-4 lg:px-0 xl:grid-cols-5">
            {data.relatedGames.map((card, index) => (
              <div
                key={card.game.id}
                className={cn(
                  "w-22 shrink-0 sm:w-24 md:w-28 lg:w-auto lg:shrink",
                  index >= 4 && "lg:hidden xl:block",
                )}
              >
                <GameDetailRelatedGameCard card={card} />
              </div>
            ))}
          </div>
        </div>
      ) : (
        <CodexInlineEmpty>No related games are seeded.</CodexInlineEmpty>
      )}
    </GameDetailSectionCard>
  );
};
