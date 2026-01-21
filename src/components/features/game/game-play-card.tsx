import { Badge } from "@/components/ui/badge";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Progress } from "@/components/ui/progress";
import Image from "next/image";
import Link from "next/link";

interface GamePlayCardProps {
  play: GamePlaySummary;
  genId: string | number;
  gameSlug: string;
}

const getStatusColor = (status: PlayStatus) => {
  switch (status) {
    case "active":
      return "bg-green-500";
    case "completed":
      return "bg-blue-500";
    case "paused":
      return "bg-yellow-500";
    case "dropped":
      return "bg-red-500";
    default:
      return "bg-gray-500";
  }
};

const getStatusLabel = (status: PlayStatus) => {
  switch (status) {
    case "active":
      return "Active";
    case "completed":
      return "Completed";
    case "paused":
      return "Paused";
    case "dropped":
      return "Dropped";
    default:
      return "Unknown";
  }
};

export const GamePlayCard = ({ play, genId, gameSlug }: GamePlayCardProps) => {
  // Calculate progress percentage
  const progressPercentage =
    play.total_progress_items > 0
      ? Math.round(
          (play.completed_progress_items / play.total_progress_items) * 100,
        )
      : 0;

  // Calculate dex completion
  const dexPercentage =
    play.regional_dex_count > 0
      ? Math.round((play.pokemon_caught_count / play.regional_dex_count) * 100)
      : 0;

  return (
    <Card className="hover:bg-muted/50 cursor-pointer transition-colors">
      <Link href={`/adventures/gen/${genId}/game/${gameSlug}/play/${play.id}`}>
        <CardHeader className="pb-3">
          <div className="flex items-start justify-between">
            <div className="space-y-1">
              <CardTitle className="text-lg">{play.name}</CardTitle>
              <CardDescription className="flex items-center gap-2">
                <div
                  className={`h-2 w-2 rounded-full ${getStatusColor(play.status)}`}
                />
                {getStatusLabel(play.status)}
              </CardDescription>
            </div>
            {play.highest_level > 0 && (
              <Badge variant="outline-secondary">
                Lv. {play.highest_level}
              </Badge>
            )}
          </div>
        </CardHeader>

        <CardContent className="space-y-4">
          {/* Progress Bar */}
          <div className="space-y-2">
            <div className="flex justify-between text-sm">
              <span className="text-muted-foreground">Progress</span>
              <span className="font-medium">
                {play.completed_progress_items}/{play.total_progress_items} (
                {progressPercentage}%)
              </span>
            </div>
            <Progress value={progressPercentage} className="h-2" />
          </div>

          {/* Dex Progress */}
          <div className="space-y-2">
            <div className="flex justify-between text-sm">
              <span className="text-muted-foreground">Pokédex</span>
              <span className="font-medium">
                {play.pokemon_caught_count}/{play.regional_dex_count} (
                {dexPercentage}%)
              </span>
            </div>
            <Progress value={dexPercentage} className="h-2" />
          </div>

          {/* Team Preview */}
          {play.pokemon_team.length > 0 && (
            <div className="space-y-2">
              <p className="text-muted-foreground text-sm">Current Team</p>
              <div className="flex flex-wrap gap-1">
                {play.pokemon_team.slice(0, 6).map((pokemon, index) => (
                  <div
                    key={index}
                    className="bg-muted flex items-center gap-1.5 rounded-full py-1 pr-2.5 pl-1"
                  >
                    {pokemon.sprite_url ? (
                      <Image
                        src={pokemon.sprite_url}
                        alt={pokemon.species?.name || "Pokemon"}
                        width={24}
                        height={24}
                        className="h-6 w-6"
                      />
                    ) : (
                      <div className="bg-muted-foreground/20 h-6 w-6 rounded-full" />
                    )}
                    <span className="text-xs font-medium">
                      {pokemon.nickname || pokemon.species?.name}
                    </span>
                  </div>
                ))}
              </div>
            </div>
          )}
        </CardContent>
      </Link>
    </Card>
  );
};
