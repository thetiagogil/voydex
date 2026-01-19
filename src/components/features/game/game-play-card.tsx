import { Badge } from "@/components/ui/badge";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import Link from "next/link";

interface GamePlayCardProps {
  play: GamePlaySummary;
  genId: string | number;
  gameSlug: string;
}

const getStatusColor = (status: Play["status"]) => {
  switch (status) {
    case "active":
      return "bg-green-500";
    case "completed":
      return "bg-blue-500";
    case "paused":
      return "bg-yellow-500";
    default:
      return "bg-gray-500";
  }
};

const getStatusLabel = (status: Play["status"]) => {
  switch (status) {
    case "active":
      return "Active";
    case "completed":
      return "Completed";
    case "paused":
      return "Paused";
    default:
      return "Unknown";
  }
};

export const GamePlayCard = ({ play, genId, gameSlug }: GamePlayCardProps) => {
  return (
    <Card className="hover:bg-muted/50 cursor-pointer transition-colors">
      <Link href={`/adventures/gen/${genId}/game/${gameSlug}/play/${play.id}`}>
        <CardHeader>
          <div className="flex items-start justify-between">
            <div className="space-y-1">
              <CardTitle className="flex w-100 items-center justify-between gap-2 text-lg">
                {play.name}
              </CardTitle>
              <CardDescription className="flex items-center gap-2">
                <div
                  className={`h-2 w-2 rounded-full ${getStatusColor(play.status)}`}
                />
                {getStatusLabel(play.status)}
              </CardDescription>
            </div>
          </div>
        </CardHeader>

        <CardContent className="space-y-4">
          {/* Overall Completion - General % (not category-specific) */}
          {/* <div className="space-y-2">
            <div className="flex justify-between text-sm">
              <span>Overall Completion</span>
              <span>{play.progress.overallCompletion || 0}%</span>
            </div>
            <div className="bg-muted h-2 w-full rounded-full">
              <div
                className="bg-primary h-2 rounded-full transition-all"
                style={{
                  width: `${play.progress.overallCompletion || 0}%`,
                }}
              />
            </div>
          </div> */}

          {/* Pokemon Stats */}
          {/* {(play.progress.pokemonCaught !== undefined ||
            play.progress.totalPokemon !== undefined) && (
            <div className="flex justify-between text-sm">
              <span className="text-muted-foreground">Pokémon Caught:</span>
              <span className="font-medium">
                {play.progress.pokemonCaught || 0}
                {play.progress.totalPokemon
                  ? `/${play.progress.totalPokemon}`
                  : ""}
              </span>
            </div>
          )} */}

          {/* Current Status */}
          {/* <div className="space-y-1 text-sm">
            {play.progress.currentLocation && (
              <div className="flex items-center gap-2">
                <Calendar className="text-muted-foreground h-4 w-4" />
                <span className="text-muted-foreground">Currently at:</span>
                <span className="font-medium">
                  {play.progress.currentLocation}
                </span>
              </div>
            )}
            {play.progress.playtime && (
              <div className="flex items-center gap-2">
                <Clock className="text-muted-foreground h-4 w-4" />
                <span className="text-muted-foreground">Playtime:</span>
                <span className="font-medium">{play.progress.playtime}</span>
              </div>
            )}
          </div> */}

          {/* Team Preview */}
          {play.pokemon_team.length > 0 && (
            <div className="space-y-2">
              <p className="text-sm font-medium">Current Team:</p>
              <div className="flex flex-wrap gap-1">
                {play.pokemon_team.slice(0, 3).map((pokemon, index) => (
                  <Badge
                    key={index}
                    variant="outline-primary"
                    className="text-xs"
                  >
                    {pokemon.species?.name} Lv.{pokemon.level}
                  </Badge>
                ))}
                {play.pokemon_team.length > 3 && (
                  <Badge variant="outline-primary" className="text-xs">
                    +{play.pokemon_team.length - 3} more
                  </Badge>
                )}
              </div>
            </div>
          )}
        </CardContent>
      </Link>
    </Card>
  );
};
