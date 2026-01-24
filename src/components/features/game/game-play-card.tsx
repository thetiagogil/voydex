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
  const progressPercentage =
    play.total_progress_items > 0
      ? Math.round(
          (play.completed_progress_items / play.total_progress_items) * 100,
        )
      : 0;

  return (
    <Card className="hover:bg-muted/50 cursor-pointer transition-colors">
      <Link href={`/adventures/gen/${genId}/game/${gameSlug}/play/${play.id}`}>
        <CardHeader className="pb-3">
          <div className="space-y-1">
            <CardTitle className="text-lg">{play.name}</CardTitle>
            <CardDescription className="flex items-center gap-2">
              <div
                className={`h-2 w-2 rounded-full ${getStatusColor(play.status)}`}
              />
              {getStatusLabel(play.status)}
            </CardDescription>
          </div>
        </CardHeader>

        <CardContent className="space-y-4">
          {/* Progress Bar */}
          <div className="space-y-2">
            <div className="flex justify-between text-sm">
              <span className="text-muted-foreground">Progress</span>
              <span className="space-x-1 font-medium">
                <span className="text-muted-foreground text-xs">
                  {play.completed_progress_items}/{play.total_progress_items}
                </span>
                <span>({progressPercentage}%)</span>
              </span>
            </div>
            <Progress value={progressPercentage} className="h-2" />
          </div>

          {/* Team Preview */}
          {play.pokemon_team.length > 0 && (
            <div className="space-y-2">
              <p className="text-muted-foreground text-sm">Current Team</p>
              <div className="flex flex-wrap gap-3">
                {play.pokemon_team.slice(0, 6).map((pokemon, index) => (
                  <div
                    key={index}
                    className="bg-muted flex items-center gap-1.5 rounded-full p-3"
                  >
                    {pokemon.sprite_url ? (
                      <Image
                        src={pokemon.sprite_url}
                        alt={pokemon.species?.name || "Pokemon"}
                        width={24}
                        height={24}
                        className="h-10 w-10"
                      />
                    ) : (
                      <div className="bg-muted-foreground/20 h-10 w-10 rounded-full" />
                    )}
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
