import Link from "next/link";
import { ArrowRightIcon } from "lucide-react";

import { appRoutes } from "@/config/routes";
import {
  formatMainlineNumber,
  formatMainlinePlaytime,
  formatMainlineShortDate,
  getMainlinePlayGameLine,
  getMainlinePlayTeamCount,
  getMainlinePlayTitle,
  getMainlinePlayTrainerLine,
} from "@/modules/mainline/features/play/components/mainline-play-summary";
import type { MainlinePlayCardData } from "@/modules/mainline/features/play/types";
import { StatusBadge } from "@/shared/components/status-badge";
import { Button } from "@/shared/components/ui/button";
import { Card, CardContent } from "@/shared/components/ui/card";

type ContinuePlayPanelProps = {
  play: MainlinePlayCardData;
};

export const ContinuePlayPanel = ({ play }: ContinuePlayPanelProps) => {
  const playId = play.play_id ? String(play.play_id) : "";
  const href = playId
    ? appRoutes.mainlinePlay(playId)
    : appRoutes.mainlinePlays;

  return (
    <Card className="bg-card/82">
      <CardContent className="grid gap-5 lg:grid-cols-[minmax(0,1fr)_auto] lg:items-center">
        <div className="min-w-0">
          <div className="flex flex-wrap items-center gap-2">
            <h2 className="text-2xl leading-tight font-semibold tracking-normal">
              Continue {getMainlinePlayTitle(play)}
            </h2>
            {play.status_name ? (
              <StatusBadge tone="neutral">{play.status_name}</StatusBadge>
            ) : null}
          </div>
          <p className="text-muted-foreground mt-2 text-sm leading-6">
            {getMainlinePlayGameLine(play)}
            {play.trainer_name ? ` - ${getMainlinePlayTrainerLine(play)}` : ""}
          </p>
          <div className="mt-4 grid gap-2 text-sm sm:grid-cols-3">
            <div className="bg-background/45 ring-app-surface-border rounded-lg p-3 ring-1">
              <div className="text-muted-foreground text-xs">Updated</div>
              <div className="mt-1 font-medium">
                {formatMainlineShortDate(play.updated_at)}
              </div>
            </div>
            <div className="bg-background/45 ring-app-surface-border rounded-lg p-3 ring-1">
              <div className="text-muted-foreground text-xs">Team</div>
              <div className="mt-1 font-medium">
                {formatMainlineNumber(getMainlinePlayTeamCount(play))} Pokémon
              </div>
            </div>
            <div className="bg-background/45 ring-app-surface-border rounded-lg p-3 ring-1">
              <div className="text-muted-foreground text-xs">Playtime</div>
              <div className="mt-1 font-medium">
                {formatMainlinePlaytime(play.playtime_minutes)}
              </div>
            </div>
          </div>
        </div>
        <Button render={<Link href={href} />} nativeButton={false}>
          Open play
          <ArrowRightIcon data-icon="inline-end" />
        </Button>
      </CardContent>
    </Card>
  );
};
