import Image from "next/image";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import { CodexGenerationSection } from "@/modules/codex/shared/components/codex-generation-section";
import { CodexResourceGrid } from "@/modules/codex/shared/components/codex-resource-grid";
import type { GameCard } from "@/modules/codex/shared/types";
import {
  getPokemonGameColorCssVariables,
  pokemonGameCardSurfaceClassName,
} from "@/shared/components/game/pokemon-game-color-styles";
import { getGameInitials } from "@/shared/domain/games/game-display";

type GamesGridProps = {
  games: GameCard[];
};

type GamesGenerationGroup = {
  games: GameCard[];
  key: string;
  label: string;
};

const getGameMetadata = (card: GameCard) => {
  return [card.game.release_year, card.region?.name]
    .filter(Boolean)
    .join(" - ");
};

const groupGamesByGeneration = (games: GameCard[]) => {
  const groups: GamesGenerationGroup[] = [];
  const groupByKey = new Map<string, GamesGenerationGroup>();

  for (const card of games) {
    const key = card.generation?.slug ?? "unknown";
    let group = groupByKey.get(key);

    if (!group) {
      group = {
        games: [],
        key,
        label: card.generation?.name ?? "Unknown generation",
      };
      groupByKey.set(key, group);
      groups.push(group);
    }

    group.games.push(card);
  }

  return groups;
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
      <article className="bg-card relative isolate aspect-square w-full overflow-hidden rounded-[inherit] [contain-intrinsic-size:18rem] [content-visibility:auto]">
        {card.coverImageUrl ? (
          <Image
            src={card.coverImageUrl}
            alt={`${card.game.name} cover art`}
            fill
            sizes="(min-width: 1280px) 25vw, (min-width: 1024px) 33vw, (min-width: 640px) 50vw, 100vw"
            className="object-cover"
          />
        ) : (
          <div className="via-card to-secondary/35 absolute inset-0 bg-linear-to-br from-(--pokemon-game-color)/40" />
        )}
        <div
          aria-hidden
          className="via-background/0 to-background/92 absolute inset-0 bg-linear-to-b from-transparent"
        />
        <div
          aria-hidden
          className="absolute inset-x-0 bottom-0 h-2/3 bg-linear-to-t from-black/84 via-black/38 to-transparent"
        />
        <div className="relative z-10 flex h-full flex-col justify-end p-4">
          <div className="min-w-0">
            {!card.coverImageUrl ? (
              <div className="mb-3 flex size-10 items-center justify-center rounded-lg bg-(--pokemon-game-color)/15 text-sm font-black text-(--pokemon-game-color)">
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
        </div>
      </article>
    </Link>
  );
};

export const GamesGrid = ({ games }: GamesGridProps) => {
  const groups = groupGamesByGeneration(games);

  return (
    <div className="flex flex-col gap-10">
      {groups.map((group) => (
        <CodexGenerationSection key={group.key} title={group.label}>
          <CodexResourceGrid columns="four">
            {group.games.map((card) => (
              <GamesGridCard key={card.game.id} card={card} />
            ))}
          </CodexResourceGrid>
        </CodexGenerationSection>
      ))}
    </div>
  );
};
