import Image from "next/image";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import type { GameCard } from "@/modules/codex/shared/types";
import {
  getPokemonGameColorCssVariables,
  pokemonGameCardSurfaceClassName,
} from "@/shared/components/game/pokemon-game-color-styles";

type GameDetailRelatedGameCardProps = {
  card: GameCard;
};

export const GameDetailRelatedGameCard = ({
  card,
}: GameDetailRelatedGameCardProps) => {
  return (
    <Link
      href={appRoutes.codexGame(card.game.slug)}
      style={getPokemonGameColorCssVariables(card.game.slug)}
      className="focus-visible:ring-ring focus-visible:ring-offset-background block min-w-0 rounded-lg focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none"
    >
      <article className="min-w-0">
        <div
          className={cn(
            "bg-card relative isolate aspect-square overflow-hidden rounded-lg border",
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
