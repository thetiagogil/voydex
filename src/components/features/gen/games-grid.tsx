import { GameCard } from "./game-card";

// =====================================================
// GamesGrid Component
// =====================================================
// Purpose: Grid layout for game cards
// Used in: Generation page (GamesSection component)
// Pattern: Presentational component (like GenerationCards)
// =====================================================

interface GamesGridProps {
  games: Array<{
    slug: string;
    name: string;
    version: string;
    color: string;
    year: number;
    description: string;
    features: string[];
    playthroughCount?: number;
    activePlaythroughs?: number;
    completedPlaythroughs?: number;
  }>;
  genSlug: string;
}

export const GamesGrid = ({ games, genSlug }: GamesGridProps) => {
  return (
    <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
      {games.map((game) => (
        <GameCard key={game.slug} game={game} genSlug={genSlug} />
      ))}
    </div>
  );
};
