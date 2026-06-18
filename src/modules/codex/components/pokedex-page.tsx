import { ArrowRightIcon, SearchIcon } from "lucide-react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { PokemonTypeList } from "@/modules/codex/components/pokemon-type-list";
import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { getPokedexPageData } from "@/modules/codex/data/queries";
import type { PokedexPokemonCard } from "@/modules/codex/types";
import { Badge } from "@/shared/components/ui/badge";
import { buttonVariants } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import {
  Empty,
  EmptyContent,
  EmptyDescription,
  EmptyHeader,
  EmptyTitle,
} from "@/shared/components/ui/empty";
import { Input } from "@/shared/components/ui/input";
import { cn } from "@/lib/utils";

type PokedexPageProps = {
  query?: string | null;
};

function formatNationalNumber(number: number) {
  return `#${number.toString().padStart(4, "0")}`;
}

function PokemonCard({ pokemon }: { pokemon: PokedexPokemonCard }) {
  return (
    <Link
      href={appRoutes.codexPokemonSpecies(pokemon.species.slug)}
      className="group"
    >
      <Card className="group-hover:border-primary/40 group-hover:bg-card/90 h-full transition-colors">
        <CardHeader>
          <div className="flex items-start justify-between gap-3">
            <div>
              <CardDescription>
                {formatNationalNumber(pokemon.species.national_number)}
              </CardDescription>
              <CardTitle>{pokemon.species.name}</CardTitle>
            </div>
            <ArrowRightIcon
              className="text-muted-foreground size-4 transition-transform group-hover:translate-x-0.5"
              aria-hidden
            />
          </div>
        </CardHeader>
        <CardContent className="flex flex-col gap-4">
          <PokemonTypeList
            primaryType={pokemon.typePair.primaryType}
            secondaryType={pokemon.typePair.secondaryType}
          />

          <div className="flex flex-wrap gap-2">
            {pokemon.introducedGeneration ? (
              <Badge variant="outline">
                {pokemon.introducedGeneration.name}
              </Badge>
            ) : null}
            {pokemon.species.is_legendary ? (
              <Badge variant="secondary">Legendary</Badge>
            ) : null}
            {pokemon.species.is_mythical ? (
              <Badge variant="secondary">Mythical</Badge>
            ) : null}
          </div>
        </CardContent>
      </Card>
    </Link>
  );
}

export async function PokedexPage({ query }: PokedexPageProps) {
  const data = await getPokedexPageData(query);

  return (
    <CodexPageShell
      title="Pokedex"
      description="Search the curated Pokemon reference data seeded for Voydex."
    >
      <form
        className="flex w-full flex-col gap-3 sm:max-w-xl sm:flex-row"
        action={appRoutes.codexPokemon}
      >
        <div className="relative flex-1">
          <SearchIcon
            className="text-muted-foreground pointer-events-none absolute top-1/2 left-3 size-4 -translate-y-1/2"
            aria-hidden
          />
          <Input
            name="q"
            defaultValue={data.searchQuery}
            placeholder="Search by name or National number"
            className="pl-9"
          />
        </div>
        <button className={buttonVariants()} type="submit">
          Search
        </button>
        {data.searchQuery ? (
          <Link
            href={appRoutes.codexPokemon}
            className={cn(buttonVariants({ variant: "outline" }), "sm:w-auto")}
          >
            Clear
          </Link>
        ) : null}
      </form>

      {data.pokemon.length ? (
        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
          {data.pokemon.map((pokemon) => (
            <PokemonCard key={pokemon.species.id} pokemon={pokemon} />
          ))}
        </div>
      ) : (
        <Empty>
          <EmptyHeader>
            <EmptyTitle>No Pokemon found</EmptyTitle>
            <EmptyDescription>
              Try a different name or National Pokedex number.
            </EmptyDescription>
          </EmptyHeader>
          <EmptyContent>
            <Link
              href={appRoutes.codexPokemon}
              className={buttonVariants({ variant: "outline" })}
            >
              Reset search
            </Link>
          </EmptyContent>
        </Empty>
      )}
    </CodexPageShell>
  );
}
