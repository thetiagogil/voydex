import { GamePokedexTile } from "@/modules/codex/features/games/detail/components/game-pokedex-tile";
import type { CodexGameDetailData } from "@/modules/codex/features/games/detail/types";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type GameDetailPokedexesSectionProps = {
  data: CodexGameDetailData;
};

/*
 * The group's Pokédexes as one content card of slim rows, one a Pokédex, its
 * expansions' included (the Isle of Armor and the Crown Tundra under Galar).
 */
export const GameDetailPokedexesSection = ({
  data,
}: GameDetailPokedexesSectionProps) => {
  const pokedexCount = data.pokedexes.length;

  return (
    <DetailSectionCard
      className="mt-8 sm:mt-10"
      title={pokedexCount === 1 ? "Pokédex" : "Pokédexes"}
    >
      {pokedexCount ? (
        <div className="grid gap-2.5">
          {data.pokedexes.map((summary) => (
            <GamePokedexTile
              key={summary.pokedex.id}
              summary={summary}
              versionGroupSlug={data.versionGroup.slug}
            />
          ))}
        </div>
      ) : (
        <p className="text-ink-2 text-15 font-semibold">
          This game has no Pokédex in the Codex yet.
        </p>
      )}
    </DetailSectionCard>
  );
};
