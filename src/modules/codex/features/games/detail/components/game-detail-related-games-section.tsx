import Image from "next/image";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import { GameDetailSection } from "@/modules/codex/features/games/detail/components/game-detail-section";
import { CodexInlineEmpty } from "@/modules/codex/shared/components/codex-detail";
import type { GameCard, GameDetailData } from "@/modules/codex/shared/types";
import {
  getPokemonGameColorCssVariables,
  pokemonGameCardSurfaceClassName,
} from "@/shared/components/game/pokemon-game-color-styles";

type GameDetailRelatedGamesSectionProps = {
  data: GameDetailData;
};

const RelatedGameCard = ({ card }: { card: GameCard }) => {
  return (
    <Link
      href={appRoutes.codexGame(card.game.slug)}
      style={getPokemonGameColorCssVariables(card.game.slug)}
      className={cn(
        "focus-visible:ring-ring focus-visible:ring-offset-background block min-w-0 rounded-lg focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none",
      )}
    >
      <article className="min-w-0">
        <div
          className={cn(
            "bg-card/76 relative isolate aspect-square overflow-hidden rounded-lg border",
            pokemonGameCardSurfaceClassName,
          )}
        >
          {card.coverImageUrl ? (
            <Image
              src={card.coverImageUrl}
              alt={`${card.game.name} cover art`}
              fill
              sizes="(min-width: 1280px) 9rem, (min-width: 1024px) 10rem, (min-width: 768px) 7rem, 5.5rem"
              className="object-cover"
            />
          ) : (
            <div className="via-card to-secondary/35 absolute inset-0 bg-linear-to-br from-(--pokemon-game-color)/40" />
          )}
        </div>
        <h3 className="text-foreground mt-2 line-clamp-2 min-h-8 text-center text-xs leading-4 font-medium">
          {card.game.name}
        </h3>
      </article>
    </Link>
  );
};

export const GameDetailRelatedGamesSection = ({
  data,
}: GameDetailRelatedGamesSectionProps) => {
  return (
    <GameDetailSection
      title="Related games"
      className="h-auto lg:h-full lg:min-h-0"
      contentClassName="lg:overflow-hidden"
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
                <RelatedGameCard card={card} />
              </div>
            ))}
          </div>
        </div>
      ) : (
        <CodexInlineEmpty>No related games are seeded.</CodexInlineEmpty>
      )}
    </GameDetailSection>
  );
};
