"use client";

import { PageLayout } from "@/components/layout/page-layout";
import { useAllPokemonForms } from "@/hooks/reference/usePokemon";
import { getPokemonSpriteUrl } from "@/lib/utils/common";

export default function PokédexPage() {
  const { data, isLoading, error } = useAllPokemonForms();

  return (
    <PageLayout>
      {isLoading && <p>Loading Pokémon forms…</p>}
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
              <img
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
