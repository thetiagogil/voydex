import { PageHeader } from "@/components/shared/page-header";

interface GameHeaderProps {
  game: {
    name: string;
    region: string;
    year?: number;
    genName: string;
    genSlug: string;
    totalPlaythroughs?: number;
    activePlaythroughs?: number;
    completedPlaythroughs?: number;
    averageCompletion?: number;
    totalPokemonCaught?: number;
    description: string;
  };
}

export const GameHeader = ({ game }: GameHeaderProps) => {
  const hasUserStats = (game.totalPlaythroughs ?? 0) > 0;

  // Build metadata text
  let metadata = game.year ? `${game.region} • ${game.year}` : game.region;

  // Add user stats if available (general completion only)
  if (hasUserStats) {
    const statsText = [];
    if (game.totalPlaythroughs) {
      statsText.push(
        `${game.totalPlaythroughs} ${game.totalPlaythroughs === 1 ? "playthrough" : "playthroughs"}`,
      );
    }
    if (game.averageCompletion !== undefined) {
      statsText.push(`${game.averageCompletion}% avg completion`);
    }
    if (game.totalPokemonCaught !== undefined) {
      statsText.push(`${game.totalPokemonCaught} Pokémon caught`);
    }

    if (statsText.length > 0) {
      metadata += ` • ${statsText.join(" • ")}`;
    }
  }

  return (
    <PageHeader
      title={game.name}
      metadata={metadata}
      description={game.description}
      badge={{
        label: game.genName,
      }}
    />
  );
};
