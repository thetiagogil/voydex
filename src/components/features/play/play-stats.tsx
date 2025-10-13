import { Badge } from "@/components/ui/badge";
import { Card, CardContent } from "@/components/ui/card";
import { type Playthrough } from "@/lib/mock-data";
import { Clock, MapPin, Trophy, Users } from "lucide-react";

interface PlayStatsProps {
  playthrough: Playthrough;
}

export function PlayStats({ playthrough }: PlayStatsProps) {
  return (
    <>
      {/* Header */}
      <div className="flex items-start justify-between">
        <div className="space-y-2">
          <h1 className="text-3xl font-bold">{playthrough.title}</h1>
          <p className="text-muted-foreground">
            {playthrough.game.name} • {playthrough.game.genName}
          </p>
        </div>

        <Badge
          className={
            playthrough.status === "active"
              ? "bg-green-500"
              : playthrough.status === "completed"
                ? "bg-blue-500"
                : "bg-yellow-500"
          }
        >
          {playthrough.status === "active"
            ? "Active"
            : playthrough.status === "completed"
              ? "Completed"
              : "Paused"}
        </Badge>
      </div>

      {/* Quick Stats */}
      <div className="grid gap-4 md:grid-cols-4">
        <Card>
          <CardContent className="pt-4">
            <div className="flex items-center gap-2">
              <Trophy className="h-4 w-4 text-muted-foreground" />
              <div className="space-y-1">
                <p className="text-sm text-muted-foreground">Badges</p>
                <p className="text-lg font-semibold">
                  {playthrough.progress.badges}/
                  {playthrough.progress.totalBadges}
                </p>
              </div>
            </div>
          </CardContent>
        </Card>

        <Card>
          <CardContent className="pt-4">
            <div className="flex items-center gap-2">
              <Users className="h-4 w-4 text-muted-foreground" />
              <div className="space-y-1">
                <p className="text-sm text-muted-foreground">Team</p>
                <p className="text-lg font-semibold">
                  {playthrough.team.length}/6
                </p>
              </div>
            </div>
          </CardContent>
        </Card>

        <Card>
          <CardContent className="pt-4">
            <div className="flex items-center gap-2">
              <MapPin className="h-4 w-4 text-muted-foreground" />
              <div className="space-y-1">
                <p className="text-sm text-muted-foreground">Location</p>
                <p className="text-sm font-semibold">
                  {playthrough.progress.currentLocation}
                </p>
              </div>
            </div>
          </CardContent>
        </Card>

        <Card>
          <CardContent className="pt-4">
            <div className="flex items-center gap-2">
              <Clock className="h-4 w-4 text-muted-foreground" />
              <div className="space-y-1">
                <p className="text-sm text-muted-foreground">Playtime</p>
                <p className="text-sm font-semibold">
                  {playthrough.progress.playtime}
                </p>
              </div>
            </div>
          </CardContent>
        </Card>
      </div>
    </>
  );
}
