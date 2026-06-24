import Link from "next/link";

import { appRoutes } from "@/config/routes";
import {
  CodexBrowseMeta,
  CodexEmptyState,
  CodexResourceGrid,
} from "@/modules/codex/components/codex-browse";
import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { PokedexFilterForm } from "@/modules/codex/components/pokedex/pokedex-filter-form";
import { PokedexPagination } from "@/modules/codex/components/pokedex/pokedex-pagination";
import { PokedexPokemonCard } from "@/modules/codex/components/pokedex/pokedex-pokemon-card";
import { getPokedexPageData } from "@/modules/codex/data/pokemon-queries";
import { buttonVariants } from "@/shared/components/ui/button";

type PokedexPageProps = {
  params?: {
    generation?: string | null;
    page?: string | number | null;
    q?: string | null;
    rarity?: string | null;
    type?: string | null;
  };
};

export const PokedexPage = async ({ params }: PokedexPageProps) => {
  const data = await getPokedexPageData(params);
  const hasActiveFilters =
    data.filters.query ||
    data.filters.generation ||
    data.filters.type ||
    data.filters.rarity !== "all";
  const firstResult =
    data.pagination.totalCount === 0
      ? 0
      : (data.pagination.page - 1) * data.pagination.pageSize + 1;
  const lastResult = Math.min(
    data.pagination.page * data.pagination.pageSize,
    data.pagination.totalCount,
  );

  return (
    <CodexPageShell
      title="Pokedex"
      description="Search and filter the Pokemon reference data seeded for Voydex."
    >
      <PokedexFilterForm
        filters={data.filters}
        generations={data.generations}
        hasActiveFilters={Boolean(hasActiveFilters)}
        searchQuery={data.searchQuery}
        types={data.types}
      />

      <CodexBrowseMeta>
        <span>
          Showing {firstResult}-{lastResult} of {data.pagination.totalCount}{" "}
          Pokemon
        </span>
      </CodexBrowseMeta>

      {data.pokemon.length ? (
        <CodexResourceGrid columns="four">
          {data.pokemon.map((pokemon, index) => (
            <PokedexPokemonCard
              key={pokemon.species.id}
              pokemon={pokemon}
              priority={index < 4}
            />
          ))}
        </CodexResourceGrid>
      ) : (
        <CodexEmptyState
          title="No Pokemon found"
          description="Try a different name or National Pokedex number."
          action={
            <Link
              href={appRoutes.codexPokemon}
              className={buttonVariants({ variant: "outline" })}
            >
              Reset search
            </Link>
          }
        />
      )}

      <PokedexPagination
        filters={data.filters}
        page={data.pagination.page}
        totalPages={data.pagination.totalPages}
      />
    </CodexPageShell>
  );
};
