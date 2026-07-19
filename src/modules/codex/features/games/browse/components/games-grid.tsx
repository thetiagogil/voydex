import Image from "next/image";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { cn } from "@/shared/utils/cn";
import { CodexGenerationSection } from "@/modules/codex/shared/components/codex-generation-section";
import { CodexResourceGrid } from "@/modules/codex/shared/components/codex-resource-grid";
import type { GameCard } from "@/modules/reference/types";
import { getPokemonGameColorCssVariables } from "@/modules/reference/features/games/display/game-color-styles";
import { getGameInitials } from "@/modules/reference/features/games/display/game-display";

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

const GamesGridCard = ({
  card,
  eager = false,
}: {
  card: GameCard;
  eager?: boolean;
}) => {
  const metadata = getGameMetadata(card);
  const gameTypeLabel = card.gameType?.name.replace(/ Version$/, "");

  return (
    <Link
      href={appRoutes.codexGame(card.game.slug)}
      aria-label={`Open ${card.game.name} game guide`}
      style={getPokemonGameColorCssVariables(card.game.slug)}
      className={cn(
        "group focus-visible:ring-ring focus-visible:ring-offset-background border-app-surface-border/80 bg-card/90 block h-full rounded-xl border shadow-xs transition-all duration-200 hover:-translate-y-0.5 hover:border-(--pokemon-game-color)/55 hover:shadow-md focus-visible:border-(--pokemon-game-color)/70 focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none",
      )}
    >
      <article className="flex h-full flex-col overflow-hidden rounded-[inherit]">
        <div className="relative isolate aspect-4/3 w-full overflow-hidden bg-transparent">
          {card.coverImageUrl ? (
            <Image
              src={card.coverImageUrl}
              alt={`${card.game.name} cover art`}
              fill
              loading={eager ? "eager" : "lazy"}
              sizes="(min-width: 1280px) 25vw, (min-width: 768px) 33vw, 50vw"
              className="object-contain p-4 drop-shadow-sm sm:p-5"
            />
          ) : (
            <div className="relative flex h-full flex-col items-center justify-center gap-2 px-5 text-center">
              <div className="flex size-11 items-center justify-center rounded-lg bg-(--pokemon-game-color)/12 text-sm font-black text-(--pokemon-game-color)">
                {getGameInitials(card.game.name)}
              </div>
              <p className="text-muted-foreground text-xs leading-4 font-semibold">
                Cover unavailable
              </p>
            </div>
          )}
        </div>

        <div className="flex flex-1 items-end justify-between gap-1 px-2.5 pb-2.5 sm:px-4 sm:pb-4">
          <div className="min-w-0">
            {metadata ? (
              <p className="text-muted-foreground truncate text-[0.68rem] leading-4 font-semibold tracking-[0.08em] uppercase">
                {metadata}
              </p>
            ) : null}
            <h3 className="text-foreground truncate font-serif text-sm leading-snug font-semibold sm:text-base lg:text-lg">
              {card.game.name}
            </h3>
          </div>

          {card.gameType ? (
            <span
              title={card.gameType.name}
              className="border-app-surface-border/80 bg-background/70 text-foreground/75 inline-flex max-w-[48%] shrink-0 truncate rounded-full border px-2 py-0.5 text-[0.62rem] leading-4 font-semibold sm:max-w-[45%] sm:text-[0.68rem]"
            >
              {gameTypeLabel}
            </span>
          ) : null}
        </div>
      </article>
    </Link>
  );
};

export const GamesGrid = ({ games }: GamesGridProps) => {
  const groups = groupGamesByGeneration(games);

  return (
    <div className="flex flex-col gap-10">
      {groups.map((group, groupIndex) => (
        <CodexGenerationSection key={group.key} title={group.label}>
          <CodexResourceGrid columns="games" className="gap-3 sm:gap-4">
            {group.games.map((card, cardIndex) => (
              <GamesGridCard
                key={card.game.id}
                card={card}
                eager={groupIndex === 0 && cardIndex === 0}
              />
            ))}
          </CodexResourceGrid>
        </CodexGenerationSection>
      ))}
    </div>
  );
};
