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
}

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
      {isLoading && <p>Loading Pokemon forms...</p>}
      {error && <p>Error loading forms: {String(error)}</p>}
      <div
        style={{
          display: "grid",
          gridTemplateColumns: "repeat(auto-fill, 96px)",
          gap: 12,
        }}
      >
        {data?.map((pokemon) => (
          <div key={pokemon.id} style={{ textAlign: "center" }}>
            {pokemon.pokemonDbSpriteSlug ? (
              <Image
                src={getPokemonSpriteUrl(false, pokemon.pokemonDbSpriteSlug)}
                alt={pokemon.name}
                width={80}
                height={80}
              />
            ) : (
              <div style={{ width: 80, height: 80, background: "#eee" }} />
            )}
            <div>{pokemon.name}</div>
          </div>
        ))}
      </div>
    </PageLayout>
  );
}
