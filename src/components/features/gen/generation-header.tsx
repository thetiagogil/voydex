import { PageHeader } from "@/components/shared/page-header";

interface GenerationHeaderProps {
  generation: {
    slug: string;
    name: string;
    region: string;
    years: string;
    pokemonCount: number;
    description: string;
    playthroughsCount?: number; // Total playthroughs in this generation
    averageCompletion?: number; // Average % completion across plays
    totalPokemonCaught?: number; // Unique Pokemon caught in this gen
  };
}

export const GenerationHeader = ({ generation }: GenerationHeaderProps) => {
  const hasUserStats = (generation.playthroughsCount ?? 0) > 0;

  // Build metadata text
  let metadata = `${generation.region} Region • ${generation.years}`;

  // Add user stats if available (general completion only, not category-specific)
  if (hasUserStats) {
    const statsText = [];
    if (generation.playthroughsCount) {
      statsText.push(
        `${generation.playthroughsCount} ${generation.playthroughsCount === 1 ? "playthrough" : "playthroughs"}`,
      );
    }
    if (generation.averageCompletion !== undefined) {
      statsText.push(`${generation.averageCompletion}% avg completion`);
    }
    if (generation.totalPokemonCaught) {
      statsText.push(
        `${generation.totalPokemonCaught}/${generation.pokemonCount} Pokémon caught`,
      );
    }

    if (statsText.length > 0) {
      metadata += ` • ${statsText.join(" • ")}`;
    }
  }

  return (
    <PageHeader
      title={generation.name}
      metadata={metadata}
      description={generation.description}
      badge={{
        label: `${generation.pokemonCount} Pokémon`,
      }}
    />
  );
};
