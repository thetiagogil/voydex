import {
  GamePokedexTile,
  type GamePokedexTileLayout,
} from "@/modules/codex/features/games/detail/components/game-pokedex-tile";
import type { CodexGameDetailData } from "@/modules/codex/features/games/detail/types";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { cn } from "@/shared/utils/cn";

type GameDetailPokedexesSectionProps = {
  data: CodexGameDetailData;
};

/* The grid follows the count: one wide tile, two or three side by side, four or five compact. */
const pokedexGridClassNames: Record<number, string> = {
  1: "grid-cols-1",
  2: "sm:grid-cols-2",
  3: "sm:grid-cols-2 lg:grid-cols-3",
  4: "gap-2.5 sm:grid-cols-2 lg:grid-cols-4",
  5: "gap-2.5 sm:grid-cols-2 lg:grid-cols-5",
};

const getTileLayout = (pokedexCount: number): GamePokedexTileLayout => {
  if (pokedexCount === 1) {
    return "single";
  }

  return pokedexCount >= 4 ? "compact" : "tile";
};

/*
 * The group's Pokédexes as one content card, its expansions' included (the
 * Isle of Armor and the Crown Tundra beside Galar).
 */
export const GameDetailPokedexesSection = ({
  data,
}: GameDetailPokedexesSectionProps) => {
  const pokedexCount = data.pokedexes.length;
  const layout = getTileLayout(pokedexCount);

  return (
    <DetailSectionCard
      className="mt-8 sm:mt-10"
      title={pokedexCount === 1 ? "Pokédex" : "Pokédexes"}
    >
      {pokedexCount ? (
        <div
          className={cn(
            "grid gap-3.5",
            pokedexGridClassNames[Math.min(pokedexCount, 5)],
          )}
        >
          {data.pokedexes.map((summary) => (
            <GamePokedexTile
              key={summary.pokedex.id}
              layout={layout}
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
