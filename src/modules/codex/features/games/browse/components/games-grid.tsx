import Image from "next/image";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import { CodexResourceGrid } from "@/modules/codex/shared/components/codex-browse";
import type { GameCard } from "@/modules/codex/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  getPokemonGameColorCssVariables,
  pokemonGameCardSurfaceClassName,
} from "@/shared/components/game/pokemon-game-color-styles";

type GamesGridProps = {
  games: GameCard[];
};

const getGameInitials = (name: string) => {
  const displayName = name.replace(/^Pokémon\s+/i, "");
  const words = displayName.match(/[A-Za-z0-9]+/g) ?? [];

  return (words.length ? words : [displayName])
    .slice(0, 2)
    .map((word) => word.slice(0, 1))
    .join("")
    .toUpperCase();
};

const getGameMetadata = (card: GameCard) => {
  return [card.game.release_year, card.region?.name]
    .filter(Boolean)
    .join(" · ");
};

const GamesGridCard = ({ card }: { card: GameCard }) => {
  return (
    <Link
      href={appRoutes.codexGame(card.game.slug)}
      style={getPokemonGameColorCssVariables(card.game.slug)}
      className={cn(
        "focus-visible:ring-ring focus-visible:ring-offset-background block h-full rounded-xl border focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none",
        pokemonGameCardSurfaceClassName,
      )}
    >
      <article className="bg-card/76 relative isolate aspect-[6/5] w-full overflow-hidden rounded-[inherit] [contain-intrinsic-size:15rem] [content-visibility:auto]">
        {card.coverImageUrl ? (
          <Image
            src={card.coverImageUrl}
            alt={`${card.game.name} cover art`}
            fill
            sizes="(min-width: 1280px) 25vw, (min-width: 1024px) 33vw, (min-width: 640px) 50vw, 100vw"
            className="object-cover"
          />
        ) : (
          <div className="from-(--pokemon-game-color)/40 via-card to-secondary/35 absolute inset-0 bg-linear-to-br" />
        )}
        <div
          aria-hidden
          className="absolute inset-0 bg-linear-to-b from-transparent via-background/0 to-background/92"
        />
        <div
          aria-hidden
          className="absolute inset-x-0 bottom-0 h-2/3 bg-linear-to-t from-black/84 via-black/38 to-transparent"
        />
        <div className="relative z-10 flex h-full flex-col justify-end p-4">
          <div className="min-w-0 pr-8">
            {!card.coverImageUrl ? (
              <div className="bg-(--pokemon-game-color)/15 text-(--pokemon-game-color) mb-3 flex size-10 items-center justify-center rounded-lg text-sm font-black">
                {getGameInitials(card.game.name)}
              </div>
            ) : null}
            <h2 className="text-foreground truncate text-base leading-snug font-semibold drop-shadow">
              {card.game.name}
            </h2>
            <p className="text-foreground/86 mt-0.5 truncate text-xs leading-5 drop-shadow">
              {getGameMetadata(card)}
            </p>
          </div>
          <AppIcon
            icon={appIcons.actions.continue}
            className="text-foreground/90 absolute right-4 bottom-4 size-4"
            aria-hidden
          />
        </div>
      </article>
    </Link>
  );
};

export const GamesGrid = ({ games }: GamesGridProps) => {
  return (
    <CodexResourceGrid columns="four">
      {games.map((card) => (
        <GamesGridCard key={card.game.id} card={card} />
      ))}
    </CodexResourceGrid>
  );
};
