import { Header } from "@/components/shared/header";
import { Badge } from "@/components/ui/badge";
import { ImageIcon, MapPin } from "lucide-react";

interface GameHeaderProps {
  game: GameWithFullData;
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

export const GameHeader = ({ game }: GameHeaderProps) => (
  <div className="flex flex-col gap-6 md:flex-row md:items-start">
    {/* Game Image Placeholder */}
    <div className="bg-muted flex h-40 w-full shrink-0 items-center justify-center rounded-xl md:h-48 md:w-64">
      <ImageIcon className="text-muted-foreground/50 h-16 w-16" />
    </div>

    {/* Game Info */}
    <div className="flex-1">
      <Header
        size="lg"
        title={game.name}
        info={
          <Badge variant={getGameTypeColor(game.type)}>
            {getGameTypeLabel(game.type)}
          </Badge>
        }
        metadata={
          <div className="flex flex-wrap items-center gap-2 text-sm">
            <span className="flex items-center gap-1">
              <MapPin className="h-4 w-4" />
              {game.region?.name} Region
            </span>
            <span>•</span>
            <span>{game.generation?.name}</span>
            <span>•</span>
            <span>{game.release_year}</span>
          </div>
        }
      />
    </div>
  </div>
);
