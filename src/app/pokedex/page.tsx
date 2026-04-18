"use client";

import Image from "next/image";
import { useQuery } from "@tanstack/react-query";
import { referenceApi } from "@/shared/api/reference";
import { PageLayout } from "@/shared/components/layout/page-layout";
import { getPokemonSpriteUrl } from "@/shared/utils";

type PokemonForm = {
  id: number;
  slug: string;
  name: string;
  speciesId: number;
  isDefault: boolean;
  pokemonDbSpriteSlug: string | null;
};

const useAllPokemonForms = () =>
  useQuery<PokemonForm[]>({
    queryKey: ["pokemon", "forms", "all"],
    queryFn: () => referenceApi.getAllPokemonForms<PokemonForm[]>(),
    staleTime: 1000 * 60 * 5,
  });

export default function PokedexPage() {
  const { data, isLoading, error } = useAllPokemonForms();

  return (
    <PageLayout>
      <div className="space-y-6">
        <div>
          <h1 className="text-2xl font-semibold tracking-[0.12em] uppercase">
            Pokedex
          </h1>
          <p className="text-muted-foreground mt-2 text-sm">
            Browse every available form using the shared dark theme tokens.
          </p>
        </div>

        {isLoading ? (
          <p className="text-muted-foreground text-sm">
            Loading Pokemon forms...
          </p>
        ) : null}

        {error ? (
          <p className="text-destructive text-sm">
            Error loading forms: {String(error)}
          </p>
        ) : null}

        <div className="grid grid-cols-[repeat(auto-fill,minmax(96px,1fr))] gap-3">
          {data?.map((pokemon) => (
            <div
              key={pokemon.id}
              className="border-border bg-card hover:border-primary/35 hover:bg-accent/30 flex flex-col items-center gap-2 rounded-2xl border p-3 text-center transition-colors"
            >
              {pokemon.pokemonDbSpriteSlug ? (
                <Image
                  src={getPokemonSpriteUrl(false, pokemon.pokemonDbSpriteSlug)}
                  alt={pokemon.name}
                  width={80}
                  height={80}
                  className="h-20 w-20 object-contain"
                />
              ) : (
                <div className="bg-muted border-border h-20 w-20 rounded-2xl border" />
              )}
              <div className="text-xs leading-tight font-medium">
                {pokemon.name}
              </div>
            </div>
          ))}
        </div>
      </div>
    </PageLayout>
  );
}
