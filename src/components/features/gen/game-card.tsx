import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import Link from "next/link";

interface GameCardProps {
  game: {
    slug: string;
    name: string;
    version: string;
    color: string; // Tailwind color class (e.g., "bg-red-500")
    year: number;
    description: string;
    features: string[];
    // User-specific data (from v_adventures_generation_play_data)
    playthroughCount?: number; // Number of user's playthroughs for this game
    activePlaythroughs?: number; // Number of active playthroughs
    completedPlaythroughs?: number; // Number of completed playthroughs
  };
  genSlug: string;
}

export const GameCard = ({ game, genSlug }: GameCardProps) => {
  const hasPlaythroughs = (game.playthroughCount ?? 0) > 0;

  return (
    <Card className="flex h-full flex-col">
      <CardHeader>
        <div className="flex items-start justify-between">
          <div className="flex-1 space-y-2">
            {/* Visual Indicator */}
            <div className={`h-4 w-4 rounded-full ${game.color}`} />

            {/* Game Name */}
            <CardTitle className="text-lg">{game.name}</CardTitle>

            {/* Version & Year */}
            <CardDescription>
              {game.version} ({game.year})
            </CardDescription>
          </div>

          {/* Playthrough Count Badge (if user has plays) */}
          {hasPlaythroughs && (
            <Badge variant="secondary" className="ml-2">
              {game.playthroughCount}{" "}
              {game.playthroughCount === 1 ? "play" : "plays"}
            </Badge>
          )}
        </div>
      </CardHeader>

      <CardContent className="flex flex-1 flex-col space-y-4">
        {/* Description */}
        <p className="text-muted-foreground flex-1 text-sm">
          {game.description}
        </p>

        {/* Features */}
        <div className="space-y-2">
          <p className="text-sm font-medium">Features:</p>
          <div className="flex flex-wrap gap-1">
            {game.features.map((feature) => (
              <Badge key={feature} variant="outline" className="text-xs">
                {feature}
              </Badge>
            ))}
          </div>
        </div>

        {/* Play Status (if user has playthroughs) */}
        {hasPlaythroughs && (
          <div className="text-muted-foreground space-y-1 text-xs">
            {game.activePlaythroughs! > 0 && (
              <p>• {game.activePlaythroughs} active</p>
            )}
            {game.completedPlaythroughs! > 0 && (
              <p>• {game.completedPlaythroughs} completed</p>
            )}
          </div>
        )}

        {/* View Game Button */}
        <div className="pt-2">
          <Button asChild className="w-full">
            <Link href={`/adventures/gen/${genSlug}/game/${game.slug}`}>
              View Game
            </Link>
          </Button>
        </div>
      </CardContent>
    </Card>
  );
};
