import Link from "next/link";
import { appRoutes } from "@/config/routes";
import {
  formatMainlineShortDate,
  getMainlinePlayGameLine,
  getMainlinePlayTitle,
  getMainlinePlayTrainerLine,
} from "@/modules/mainline/features/play/browse/components/mainline-play-summary";
import type { MainlinePlayCardData } from "@/modules/mainline/features/play/types";
import { EmptyState } from "@/shared/components/empty-state";
import { StatusBadge } from "@/shared/components/status-badge";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardAction,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type RecentPlaysPanelProps = {
  plays: MainlinePlayCardData[];
};

const RecentPlayRow = ({ play }: { play: MainlinePlayCardData }) => {
  const playId = play.play_id ? String(play.play_id) : "";
  return (
    <Link
      href={playId ? appRoutes.mainlinePlay(playId) : appRoutes.mainlinePlays}
      className="bg-background/40 ring-app-surface-border hover:bg-muted/50 grid gap-3 rounded-lg p-3 ring-1 transition-colors sm:grid-cols-[minmax(0,1fr)_auto]"
    >
      <div className="min-w-0">
        <div className="flex flex-wrap items-center gap-2">
          <p className="truncate font-medium">{getMainlinePlayTitle(play)}</p>
          {play.status_name ? (
            <StatusBadge tone="neutral">{play.status_name}</StatusBadge>
          ) : null}
        </div>
        <p className="text-muted-foreground mt-1 truncate text-sm">
          {getMainlinePlayGameLine(play)}
          {play.trainer_name ? ` - ${getMainlinePlayTrainerLine(play)}` : ""}
        </p>
      </div>
      <div className="text-muted-foreground flex items-center gap-2 text-sm [&_svg]:size-4">
        <AppIcon icon={appIcons.product.recent} aria-hidden />
        {formatMainlineShortDate(play.updated_at)}
      </div>
    </Link>
  );
};

export const RecentPlaysPanel = ({ plays }: RecentPlaysPanelProps) => {
  return (
    <Card className="bg-card/88">
      <CardHeader>
        <CardTitle>Recent plays</CardTitle>
        <CardDescription>
          Continue where the latest records left off.
        </CardDescription>
        <CardAction>
          <Button
            render={<Link href={appRoutes.mainlinePlays} />}
            nativeButton={false}
            variant="ghost"
            size="sm"
          >
            View all
            <AppIcon icon={appIcons.actions.continue} inline="end" />
          </Button>
        </CardAction>
      </CardHeader>
      <CardContent>
        {plays.length ? (
          <div className="flex flex-col gap-2">
            {plays.map((play) => (
              <RecentPlayRow
                key={play.play_id ?? `${play.game_id}-${play.updated_at}`}
                play={play}
              />
            ))}
          </div>
        ) : (
          <EmptyState
            title="No recent plays"
            description="New plays will appear here once you create them."
          />
        )}
      </CardContent>
    </Card>
  );
};
