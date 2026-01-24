import { Header } from "@/components/shared/header";
import { Badge } from "@/components/ui/badge";
import { ImageIcon, MapPin } from "lucide-react";
import Image from "next/image";

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
  <div className="flex gap-6">
    {/* Game Image */}
    <div className="bg-muted relative h-18 w-18 shrink-0 overflow-hidden rounded-xl">
      {game.cover_url ? (
        <Image
          src={game.cover_url}
          alt={game.name}
          fill
          className="object-cover"
        />
      ) : (
        <div className="flex h-full w-full items-center justify-center">
          <ImageIcon className="text-muted-foreground/50 h-12 w-12" />
        </div>
      )}
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
