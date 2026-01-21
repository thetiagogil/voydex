import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { CheckCircle, CircleDot, ImageIcon, MapPin, Play } from "lucide-react";
import Link from "next/link";

interface GameCardProps {
  game: GameWithPlayStats;
  genId: string;
}

const getGameTypeColor = (type: string) => {
  switch (type) {
    case "main":
      return "outline-primary";
    case "remake":
      return "outline-secondary";
    case "enhanced":
      return "secondary";
    default:
      return "outline-secondary";
  }
};

const getGameTypeLabel = (type: string) => {
  switch (type) {
    case "main":
      return "Main Game";
    case "remake":
      return "Remake";
    case "enhanced":
      return "Enhanced";
    default:
      return type;
  }
};

export const GameCard = ({ game, genId }: GameCardProps) => {
  const hasPlays = game.stats.totalPlays > 0;

  return (
    <Card className="flex h-full flex-col transition-shadow hover:shadow-md">
      <CardHeader className="pb-3">
        {/* Game Image Placeholder */}
        <div className="bg-muted mb-3 flex h-32 items-center justify-center rounded-lg">
          <ImageIcon className="text-muted-foreground/50 h-12 w-12" />
        </div>

        <div className="flex items-start justify-between gap-2">
          <div className="flex-1 space-y-1">
            <CardTitle className="text-lg">{game.name}</CardTitle>
            <CardDescription className="flex items-center gap-1.5">
              <MapPin className="h-3.5 w-3.5" />
              {game.region.name} • {game.releaseYear}
            </CardDescription>
          </div>
          <Badge variant={getGameTypeColor(game.type)}>
            {getGameTypeLabel(game.type)}
          </Badge>
        </div>
      </CardHeader>

      <CardContent className="flex flex-1 flex-col space-y-3">
        {/* Play Stats (if any) */}
        {hasPlays ? (
          <div className="flex flex-wrap gap-3 text-sm">
            <div className="flex items-center gap-1.5">
              <Play className="h-4 w-4 text-purple-500" />
              <span>{game.stats.totalPlays} plays</span>
            </div>
            {game.stats.activePlays > 0 && (
              <div className="flex items-center gap-1.5">
                <CircleDot className="h-4 w-4 text-green-500" />
                <span>{game.stats.activePlays} active</span>
              </div>
            )}
            {game.stats.completedPlays > 0 && (
              <div className="flex items-center gap-1.5">
                <CheckCircle className="h-4 w-4 text-yellow-500" />
                <span>{game.stats.completedPlays} done</span>
              </div>
            )}
          </div>
        ) : (
          <p className="text-muted-foreground text-sm">No playthroughs yet</p>
        )}

        {/* View Game Button */}
        <div className="mt-auto pt-2">
          <Button asChild className="w-full" variant="outline-secondary">
            <Link href={`/adventures/gen/${genId}/game/${game.slug}`}>
              {hasPlays ? "View Playthroughs" : "Start Adventure"}
            </Link>
          </Button>
        </div>
      </CardContent>
    </Card>
  );
};
