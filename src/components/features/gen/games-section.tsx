import { GamesGrid } from "./games-grid";

interface GamesSectionProps {
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

export const GamesSection = ({ games, genSlug }: GamesSectionProps) => {
  return (
    <div className="space-y-4">
      <h2 className="text-2xl font-semibold">Available Games</h2>
      <GamesGrid games={games} genSlug={genSlug} />
    </div>
  );
};
