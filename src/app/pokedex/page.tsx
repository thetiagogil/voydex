"use client";

import { PageLayout } from "@/shared/components/layout/page-layout";
import { getPokemonSpriteUrl } from "@/shared/utils";
import { useQuery } from "@tanstack/react-query";

interface PokemonForm {
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
    queryFn: async () => {
      const res = await fetch("/api/features/reference/pokemon/forms");
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch all forms");
      return data;
    },
    staleTime: 1000 * 60 * 5,
  });

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
