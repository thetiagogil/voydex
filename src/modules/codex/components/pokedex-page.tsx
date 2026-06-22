import { SearchIcon } from "lucide-react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import {
  CodexBrowseMeta,
  CodexEmptyState,
  CodexFilterPanel,
  CodexResourceCard,
  CodexResourceGrid,
} from "@/modules/codex/components/codex-browse";
import { PokemonTypeList } from "@/modules/codex/components/pokemon-type-list";
import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { getPokedexPageData } from "@/modules/codex/data/queries";
import type {
  PokedexPokemonCard,
  PokedexRarityFilter,
} from "@/modules/codex/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Badge } from "@/shared/components/ui/badge";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";
import {
  NativeSelect,
  NativeSelectOption,
} from "@/shared/components/ui/native-select";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/shared/pokemon/pokemon-images";
import { isPokemonTypeSlug } from "@/shared/pokemon/constants";
import { cn } from "@/lib/utils";

type PokedexPageProps = {
  params?: {
    generation?: string | null;
    page?: string | number | null;
    q?: string | null;
    rarity?: string | null;
    type?: string | null;
  };
};

const rarityOptions: Array<{ label: string; value: PokedexRarityFilter }> = [
  { label: "All rarity", value: "all" },
  { label: "Standard", value: "standard" },
  { label: "Legendary", value: "legendary" },
  { label: "Mythical", value: "mythical" },
];

function formatNationalNumber(number: number) {
  return `#${number.toString().padStart(4, "0")}`;
}

function PokemonCard({
  pokemon,
  priority = false,
}: {
  pokemon: PokedexPokemonCard;
  priority?: boolean;
}) {
  const primaryTypeSlug = pokemon.typePair.primaryType?.slug;
  const portraitType =
    primaryTypeSlug && isPokemonTypeSlug(primaryTypeSlug)
      ? primaryTypeSlug
      : null;

  return (
    <CodexResourceCard
      href={appRoutes.codexPokemonSpecies(pokemon.species.slug)}
      description={formatNationalNumber(pokemon.species.national_number)}
      title={pokemon.species.name}
      media={
        <PokemonPortrait
          alt={getPokemonFormImageAlt(pokemon.defaultForm)}
          imageUrl={getPokemonFormImageUrl(pokemon.defaultForm)}
          priority={priority}
          type={portraitType}
          className="mx-auto aspect-square max-w-44"
        />
      }
      contentClassName="gap-4"
    >
      <PokemonTypeList
        primaryType={pokemon.typePair.primaryType}
        secondaryType={pokemon.typePair.secondaryType}
      />

      <div className="flex flex-wrap gap-2">
        {pokemon.introducedGeneration ? (
          <Badge variant="outline">{pokemon.introducedGeneration.name}</Badge>
        ) : null}
        {pokemon.species.is_legendary ? (
          <Badge variant="secondary">Legendary</Badge>
        ) : null}
        {pokemon.species.is_mythical ? (
          <Badge variant="secondary">Mythical</Badge>
        ) : null}
      </div>
    </CodexResourceCard>
  );
}

function buildPokedexHref(
  filters: {
    generation: string;
    query: string;
    rarity: PokedexRarityFilter;
    type: string;
  },
  page: number,
) {
  const params = new URLSearchParams();

  if (filters.query) {
    params.set("q", filters.query);
  }

  if (filters.generation) {
    params.set("generation", filters.generation);
  }

  if (filters.type) {
    params.set("type", filters.type);
  }

  if (filters.rarity !== "all") {
    params.set("rarity", filters.rarity);
  }

  if (page > 1) {
    params.set("page", String(page));
  }

  const query = params.toString();

  return query ? `${appRoutes.codexPokemon}?${query}` : appRoutes.codexPokemon;
}

export async function PokedexPage({ params }: PokedexPageProps) {
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
      <CodexFilterPanel
        className="lg:grid-cols-[minmax(18rem,1fr)_auto_auto_auto_auto]"
        action={appRoutes.codexPokemon}
      >
        <InputGroup className="h-10 flex-1">
          <InputGroupAddon>
            <SearchIcon aria-hidden />
          </InputGroupAddon>
          <InputGroupInput
            name="q"
            defaultValue={data.searchQuery}
            placeholder="Search by name or National number"
          />
        </InputGroup>
        <NativeSelect
          name="generation"
          aria-label="Filter by generation"
          defaultValue={data.filters.generation}
          className="w-full lg:w-44"
        >
          <NativeSelectOption value="">All generations</NativeSelectOption>
          {data.generations.map((generation) => (
            <NativeSelectOption key={generation.id} value={generation.slug}>
              {generation.name}
            </NativeSelectOption>
          ))}
        </NativeSelect>
        <NativeSelect
          name="type"
          aria-label="Filter by type"
          defaultValue={data.filters.type}
          className="w-full lg:w-40"
        >
          <NativeSelectOption value="">All types</NativeSelectOption>
          {data.types.map((type) => (
            <NativeSelectOption key={type.id} value={type.slug}>
              {type.name}
            </NativeSelectOption>
          ))}
        </NativeSelect>
        <NativeSelect
          name="rarity"
          aria-label="Filter by rarity"
          defaultValue={data.filters.rarity}
          className="w-full lg:w-40"
        >
          {rarityOptions.map((option) => (
            <NativeSelectOption key={option.value} value={option.value}>
              {option.label}
            </NativeSelectOption>
          ))}
        </NativeSelect>
        <div className="flex gap-2">
          <Button type="submit" className="flex-1 sm:flex-none">
            Search
          </Button>
          {hasActiveFilters ? (
            <Link
              href={appRoutes.codexPokemon}
              className={cn(
                buttonVariants({ variant: "outline" }),
                "flex-1 sm:flex-none",
              )}
            >
              Clear
            </Link>
          ) : null}
        </div>
      </CodexFilterPanel>

      <CodexBrowseMeta>
        <span>
          Showing {firstResult}-{lastResult} of {data.pagination.totalCount}{" "}
          Pokemon
        </span>
      </CodexBrowseMeta>

      {data.pokemon.length ? (
        <CodexResourceGrid columns="four">
          {data.pokemon.map((pokemon, index) => (
            <PokemonCard
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

      {data.pagination.totalPages > 1 ? (
        <nav
          aria-label="Pokemon pagination"
          className="flex items-center justify-between gap-3"
        >
          <Link
            href={buildPokedexHref(
              data.filters,
              Math.max(data.pagination.page - 1, 1),
            )}
            aria-disabled={data.pagination.page <= 1}
            className={cn(
              buttonVariants({ variant: "outline" }),
              data.pagination.page <= 1 && "pointer-events-none opacity-50",
            )}
          >
            Previous
          </Link>
          <span className="text-muted-foreground text-sm">
            Page {data.pagination.page} of {data.pagination.totalPages}
          </span>
          <Link
            href={buildPokedexHref(
              data.filters,
              Math.min(data.pagination.page + 1, data.pagination.totalPages),
            )}
            aria-disabled={data.pagination.page >= data.pagination.totalPages}
            className={cn(
              buttonVariants({ variant: "outline" }),
              data.pagination.page >= data.pagination.totalPages &&
                "pointer-events-none opacity-50",
            )}
          >
            Next
          </Link>
        </nav>
      ) : null}
    </CodexPageShell>
  );
}
