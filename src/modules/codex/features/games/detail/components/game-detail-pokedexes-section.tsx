import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { CodexDetailSectionCard } from "@/modules/codex/shared/components/codex-detail-section-card";
import { CodexInlineEmpty } from "@/modules/codex/shared/components/codex-inline-empty";
import type { GameDetailData } from "@/modules/codex/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { formatPokedexName } from "@/shared/domain/pokemon/pokemon-formatters";

type GameDetailPokedexesSectionProps = {
  data: GameDetailData;
};

export const GameDetailPokedexesSection = ({
  data,
}: GameDetailPokedexesSectionProps) => {
  return (
    <CodexDetailSectionCard
      id="game-pokedexes"
      title="Game Pokédexes"
      headerClassName="py-3"
      className="h-auto lg:h-full lg:min-h-0"
      contentClassName="p-3 lg:flex lg:min-h-0 lg:flex-1 lg:flex-col lg:overflow-hidden"
    >
      {data.pokedexes.length ? (
        <div className="flex flex-col gap-2 lg:min-h-0 lg:flex-1 lg:scrollbar-gutter-stable lg:overflow-y-auto lg:px-px lg:py-px">
          {data.pokedexes.map(({ pokedex, pokemonCount }) => (
            <Link
              key={pokedex.id}
              href={appRoutes.codexGamePokedex(data.game.slug, pokedex.slug)}
              className="bg-background ring-app-surface-border hover:bg-muted focus-visible:ring-ring focus-visible:ring-offset-background group flex min-h-16 items-center gap-3 rounded-lg px-3 py-2.5 ring-1 transition-colors focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none"
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
        <CodexInlineEmpty>No Pokédex rows are seeded.</CodexInlineEmpty>
      )}
    </CodexDetailSectionCard>
  );
};
