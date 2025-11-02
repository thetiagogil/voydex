import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Progress } from "@/components/ui/progress";
import { type Playthrough } from "@/lib/mock-data/types";
import { Clock, MapPin, Play, Trophy } from "lucide-react";
import Link from "next/link";

interface PlaythroughsListProps {
  playthroughs: Playthrough[];
  gameSlug: string;
  genSlug: string;
}

export function PlaythroughsList({
  playthroughs,
  gameSlug,
  genSlug,
}: PlaythroughsListProps) {
  if (playthroughs.length === 0) {
    return (
      <Card>
        <CardContent className="flex flex-col items-center justify-center py-12">
          <Trophy className="h-12 w-12 text-muted-foreground mb-4" />
          <h3 className="text-lg font-semibold mb-2">No Playthroughs Yet</h3>
          <p className="text-muted-foreground text-center mb-6 max-w-md">
            Start your first playthrough of this game to begin tracking your
            Pokémon journey.
          </p>
          <Button asChild>
            <Link href={`/adventures/gen/${genSlug}/${gameSlug}/play/new`}>
              <Play className="h-4 w-4 mr-2" />
              Start New Playthrough
            </Link>
          </Button>
        </CardContent>
      </Card>
    );
  }

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between">
        <h2 className="text-lg font-semibold">Your Playthroughs</h2>
        <Button asChild variant="outline" size="sm">
          <Link href={`/gen/${genSlug}/${gameSlug}/play/new`}>
            <Play className="h-4 w-4 mr-2" />
            New Playthrough
          </Link>
        </Button>
      </div>

      <div className="grid gap-4">
        {playthroughs.map((playthrough) => (
          <Card
            key={playthrough.id}
            className="hover:shadow-md transition-shadow"
          >
            <CardHeader className="pb-4">
              <div className="flex items-center justify-between">
                <div className="space-y-1">
                  <CardTitle className="text-lg">{playthrough.title}</CardTitle>
                  <div className="flex items-center gap-2">
                    <Badge
                      variant={
                        playthrough.status === "completed"
                          ? "default"
                          : playthrough.status === "active"
                            ? "secondary"
                            : "outline"
                      }
                      className="text-xs"
                    >
                      {playthrough.status === "completed"
                        ? "🏆 Completed"
                        : playthrough.status === "active"
                          ? "🎮 In Progress"
                          : "⏸️ Paused"}
                    </Badge>
                    <span className="text-sm text-muted-foreground">
                      Started{" "}
                      {new Date(playthrough.createdAt).toLocaleDateString()}
                    </span>
                  </div>
                </div>
                <Button asChild size="sm">
                  <Link
                    href={`/adventures/gen/${genSlug}/${gameSlug}/play/${playthrough.id}`}
                  >
                    Continue
                  </Link>
                </Button>
              </div>
            </CardHeader>

            <CardContent className="space-y-4">
              {/* Progress Bar */}
              <div className="space-y-2">
                <div className="flex justify-between text-sm">
                  <span className="text-muted-foreground">Progress</span>
                  <span className="font-medium">
                    {Math.round(
                      (playthrough.progress.badges /
                        playthrough.progress.totalBadges) *
                        100
                    )}
                    %
                  </span>
                </div>
                <Progress
                  value={
                    (playthrough.progress.badges /
                      playthrough.progress.totalBadges) *
                    100
                  }
                  className="h-2"
                />
              </div>

              {/* Quick Stats */}
              <div className="grid grid-cols-2 md:grid-cols-4 gap-4 text-sm">
                <div className="flex items-center gap-2">
                  <Trophy className="h-4 w-4 text-amber-500" />
                  <span>{playthrough.progress.badges} Badges</span>
                </div>
                <div className="flex items-center gap-2">
                  <div className="w-4 h-4 rounded-full bg-blue-500 flex items-center justify-center">
                    <span className="text-xs text-white font-bold">⚡</span>
                  </div>
                  <span>{playthrough.team.length}/6 Team</span>
                </div>
                <div className="flex items-center gap-2">
                  <MapPin className="h-4 w-4 text-green-500" />
                  <span>{playthrough.progress.currentLocation}</span>
                </div>
                <div className="flex items-center gap-2">
                  <Clock className="h-4 w-4 text-purple-500" />
                  <span>{playthrough.progress.playtime}</span>
                </div>
              </div>

              {/* Team Preview */}
              {playthrough.team && playthrough.team.length > 0 && (
                <div className="pt-2 border-t">
                  <p className="text-sm text-muted-foreground mb-2">
                    Current Team
                  </p>
                  <div className="flex gap-2 flex-wrap">
                    {playthrough.team.slice(0, 6).map((pokemon, index) => (
                      <div
                        key={index}
                        className="flex items-center gap-1 text-xs bg-muted rounded-md px-2 py-1"
                      >
                        <span>{pokemon.nickname || pokemon.species}</span>
                        <span className="text-muted-foreground">
                          Lv.{pokemon.level}
                        </span>
                      </div>
                    ))}
                  </div>
                </div>
              )}
            </CardContent>
          </Card>
        ))}
      </div>
    </div>
  );
}
