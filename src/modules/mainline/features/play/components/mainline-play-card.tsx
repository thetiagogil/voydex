import Link from "next/link";
import { CalendarDays, Clock3, ListChecks, UsersRound } from "lucide-react";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayCardData } from "@/modules/mainline/features/play/types";
import { Badge } from "@/shared/components/ui/badge";
import {
  Card,
  CardContent,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Button } from "@/shared/components/ui/button";

type MainlinePlayCardProps = {
  play: MainlinePlayCardData;
};

function formatDate(value: string | null) {
  if (!value) {
    return "No start date";
  }

  return new Intl.DateTimeFormat("en", {
    day: "numeric",
    month: "short",
    year: "numeric",
  }).format(new Date(`${value}T00:00:00`));
}

function formatPlaytime(minutes: number | null) {
  if (!minutes) {
    return "No playtime";
  }

  const hours = Math.floor(minutes / 60);
  const remainder = minutes % 60;

  if (!hours) {
    return `${remainder}m`;
  }

  return remainder ? `${hours}h ${remainder}m` : `${hours}h`;
}

function getPlayTitle(play: MainlinePlayCardData) {
  return play.play_name ?? "Untitled play";
}

export function MainlinePlayCard({ play }: MainlinePlayCardProps) {
  const teamCount =
    (play.active_team_count ?? 0) + (play.reserve_team_count ?? 0);

  return (
    <Card className="bg-card/88 min-h-full">
      <CardHeader>
        <div className="flex items-start justify-between gap-3">
          <div className="min-w-0">
            <CardTitle className="truncate">{getPlayTitle(play)}</CardTitle>
            <p className="text-muted-foreground mt-1 truncate text-sm">
              {play.game_name ?? "Unknown game"}
              {play.generation_name ? ` - ${play.generation_name}` : ""}
            </p>
          </div>
          {play.status_name ? (
            <Badge variant="secondary">{play.status_name}</Badge>
          ) : null}
        </div>
      </CardHeader>
      <CardContent className="grid gap-4">
        <dl className="grid grid-cols-2 gap-3 text-sm">
          <div className="bg-muted/40 rounded-lg p-3">
            <dt className="text-muted-foreground flex items-center gap-1.5 text-xs">
              <CalendarDays className="size-3.5" />
              Started
            </dt>
            <dd className="mt-1 font-medium">{formatDate(play.started_on)}</dd>
          </div>
          <div className="bg-muted/40 rounded-lg p-3">
            <dt className="text-muted-foreground flex items-center gap-1.5 text-xs">
              <Clock3 className="size-3.5" />
              Playtime
            </dt>
            <dd className="mt-1 font-medium">
              {formatPlaytime(play.playtime_minutes)}
            </dd>
          </div>
          <div className="bg-muted/40 rounded-lg p-3">
            <dt className="text-muted-foreground flex items-center gap-1.5 text-xs">
              <UsersRound className="size-3.5" />
              Team
            </dt>
            <dd className="mt-1 font-medium">{teamCount} Pokemon</dd>
          </div>
          <div className="bg-muted/40 rounded-lg p-3">
            <dt className="text-muted-foreground flex items-center gap-1.5 text-xs">
              <ListChecks className="size-3.5" />
              Progress
            </dt>
            <dd className="mt-1 font-medium">
              {play.completed_milestone_count ?? 0} milestones
            </dd>
          </div>
        </dl>
      </CardContent>
      <CardFooter className="justify-between gap-3">
        <span className="text-muted-foreground text-xs">
          {play.trainer_name ? `Trainer: ${play.trainer_name}` : "No trainer"}
        </span>
        <Button
          render={<Link href={appRoutes.mainlinePlay(String(play.play_id))} />}
          nativeButton={false}
          variant="outline"
          size="sm"
        >
          Open
        </Button>
      </CardFooter>
    </Card>
  );
}
