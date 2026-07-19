import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { GameDetailSectionCard } from "@/modules/codex/features/games/detail/components/game-detail-section-card";
import { CodexInlineEmpty } from "@/modules/codex/shared/components/codex-inline-empty";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { formatPokedexName } from "@/modules/reference/features/pokemon/display/pokemon-formatters";
import type { GameDetailData } from "@/modules/reference/types";

type GameDetailPokedexesSectionProps = {
  data: GameDetailData;
};

export const GameDetailPokedexesSection = ({
  data,
}: GameDetailPokedexesSectionProps) => {
  return (
    <GameDetailSectionCard
      id="game-pokedexes"
      title="Game Pokédexes"
      showSeparator
      contentClassName="p-0"
    >
      {data.pokedexes.length ? (
        <div className="divide-app-surface-border/60 flex flex-col divide-y">
          {data.pokedexes.map(({ pokedex, pokemonCount }) => (
            <Link
              key={pokedex.id}
              href={appRoutes.codexGamePokedex(data.game.slug, pokedex.slug)}
              aria-label={`Browse the ${formatPokedexName(pokedex.name)} for ${data.game.name}`}
              className="hover:bg-muted/45 focus-visible:ring-ring focus-visible:ring-offset-background group flex min-h-16 items-center gap-3 px-4 py-3 transition-colors focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none"
            >
              <div className="min-w-0 flex-1">
                <h3 className="text-foreground truncate text-sm leading-6 font-medium">
                  {formatPokedexName(pokedex.name)}
                </h3>
                <p className="text-muted-foreground truncate text-xs leading-5">
                  {pokedex.pokedex_kind === "national"
                    ? "National Pokédex"
                    : "Regional Pokédex"}
                </p>
              </div>
              <div className="flex shrink-0 items-baseline gap-1 text-right">
                <span className="text-foreground text-sm leading-6 font-medium">
                  {pokemonCount.toLocaleString()}
                </span>
                <span className="text-muted-foreground hidden text-xs leading-5 sm:inline">
                  Pokémon
                </span>
              </div>
              <AppIcon
                icon={appIcons.actions.continue}
                size="sm"
                aria-hidden
                className="text-muted-foreground group-hover:text-foreground shrink-0 transition-colors"
              />
            </Link>
          ))}
        </div>
      ) : (
        <div className="p-4">
          <CodexInlineEmpty>No Pokédex rows are seeded.</CodexInlineEmpty>
        </div>
      )}
    </GameDetailSectionCard>
  );
};
