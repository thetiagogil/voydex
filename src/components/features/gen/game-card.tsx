import { QuickStat } from "@/components/shared/quick-stat";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import {
  Calendar,
  Cat,
  CircleCheck,
  ImageIcon,
  MapPin,
  PauseCircle,
  Target,
  Trash2Icon,
} from "lucide-react";
import Image from "next/image";
import Link from "next/link";

interface GameCardProps {
  game: GameWithPlayStats;
  genId: string;
}

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
    <Card className="group flex h-full w-[270px] flex-col hover:shadow-xl">
      {/* Game Image with Gradient Overlay */}

      <CardHeader className="pb-3">
        <div className="relative h-48 w-full overflow-hidden">
          {game.cover_url ? (
            <>
              <Image
                src={game.cover_url}
                alt={game.name}
                fill
                className="object-cover transition-transform duration-500 group-hover:scale-105"
              />
              <div className="from-background via-background/20 absolute inset-0 bg-gradient-to-t to-transparent" />
            </>
          ) : (
            <div className="bg-muted flex h-full w-full items-center justify-center">
              <ImageIcon className="text-muted-foreground/30 h-16 w-16" />
            </div>
          )}

          {/* Type Badge - Floating on Image */}
          <div className="absolute top-3 right-3">
            <Badge variant="secondary">{getGameTypeLabel(game.type)}</Badge>
          </div>
        </div>
        <div className="space-y-2">
          <CardTitle className="text-lg leading-tight">{game.name}</CardTitle>
          <CardDescription className="flex items-center gap-2 text-sm">
            <QuickStat
              size="sm"
              icon={<MapPin className="h-4 w-4" />}
              value={game.region.name}
            />
            <span>•</span>
            <QuickStat
              size="sm"
              icon={<Calendar className="h-4 w-4" />}
              value={game.releaseYear}
            />
            <span>•</span>
            <QuickStat
              size="sm"
              icon={<Cat className="h-4 w-4" />}
              value={game.regionalDexCount}
            />
          </CardDescription>
        </div>
      </CardHeader>

      <CardContent className="flex flex-1 flex-col space-y-4">
        {/* Play Stats (if any) */}
        {hasPlays ? (
          <div className="bg-muted/50 flex flex-wrap justify-around gap-3 rounded-lg p-3 text-sm">
            <QuickStat
              size="sm"
              icon={<Target className="h-4 w-4" />}
              value={game.stats.activePlays}
              variant="yellow"
            />
            <QuickStat
              size="sm"
              icon={<PauseCircle className="h-4 w-4" />}
              value={1}
              variant="cyan"
            />
            <QuickStat
              size="sm"
              icon={<CircleCheck className="h-4 w-4" />}
              value={game.stats.completedPlays}
              variant="green"
            />
            <QuickStat
              size="sm"
              icon={<Trash2Icon className="h-4 w-4" />}
              value={1}
            />
          </div>
        ) : (
          <div className="text-muted-foreground bg-muted/30 rounded-lg p-3 text-center text-sm italic">
            No adventures yet
          </div>
        )}
      </CardContent>
      <CardFooter>
        {/* View Game Button */}
        <Button asChild className="w-full" variant="outline-secondary">
          <Link href={`/adventures/gen/${genId}/game/${game.slug}`}>
            {hasPlays ? "View Adventures" : "Start Adventure"}
          </Link>
        </Button>
      </CardFooter>
    </Card>
  );
};
