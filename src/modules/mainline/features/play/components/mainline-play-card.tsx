import Link from "next/link";
import {
  ArrowRightIcon,
  CalendarDaysIcon,
  Clock3Icon,
  ListChecksIcon,
  PackageCheckIcon,
  UsersRoundIcon,
} from "lucide-react";
import { appRoutes } from "@/config/routes";
import {
  formatMainlineDate,
  formatMainlinePlaytime,
  formatMainlineShortDate,
  getMainlinePlayGameLine,
  getMainlinePlayPokedexLine,
  getMainlinePlayTeamCount,
  getMainlinePlayTitle,
  getMainlinePlayTrainerLine,
} from "@/modules/mainline/features/play/components/mainline-play-summary";
import type { MainlinePlayCardData } from "@/modules/mainline/features/play/types";
import { StatusBadge } from "@/shared/components/app/status-badge";
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
const PlayMetric = ({
  icon,
  label,
  value,
}: {
  icon: React.ReactNode;
  label: string;
  value: string;
}) => {
  return (
    <div className="bg-background/45 ring-app-surface-border rounded-lg p-3 ring-1">
      <dt className="text-muted-foreground flex items-center gap-1.5 text-xs [&_svg]:size-3.5">
        {icon}
        {label}
      </dt>
      <dd className="mt-1 font-medium">{value}</dd>
    </div>
  );
};
export const MainlinePlayCard = ({ play }: MainlinePlayCardProps) => {
  const href = play.play_id
    ? appRoutes.mainlinePlay(String(play.play_id))
    : appRoutes.mainlinePlays;
  return (
    <Card className="bg-card/82">
      <CardHeader>
        <div className="grid gap-4 lg:grid-cols-[minmax(0,1fr)_auto] lg:items-start">
          <div className="min-w-0">
            <div className="flex flex-wrap items-center gap-2">
              <CardTitle className="truncate">
                {getMainlinePlayTitle(play)}
              </CardTitle>
              {play.status_name ? (
                <StatusBadge tone="neutral">{play.status_name}</StatusBadge>
              ) : null}
            </div>
            <p className="text-muted-foreground mt-1 truncate text-sm">
              {getMainlinePlayGameLine(play)}
            </p>
          </div>
          <Button
            render={<Link href={href} />}
            nativeButton={false}
            variant={play.status_slug === "completed" ? "outline" : "default"}
            size="sm"
          >
            {play.status_slug === "completed" ? "Open record" : "Continue"}
            <ArrowRightIcon data-icon="inline-end" />
          </Button>
        </div>
      </CardHeader>
      <CardContent>
        <dl className="grid gap-3 text-sm sm:grid-cols-2 xl:grid-cols-5">
          <PlayMetric
            icon={<CalendarDaysIcon aria-hidden />}
            label="Started"
            value={formatMainlineDate(play.started_on, "No start date")}
          />
          <PlayMetric
            icon={<Clock3Icon aria-hidden />}
            label="Updated"
            value={formatMainlineShortDate(play.updated_at)}
          />
          <PlayMetric
            icon={<UsersRoundIcon aria-hidden />}
            label="Team"
            value={`${getMainlinePlayTeamCount(play)} Pokemon`}
          />
          <PlayMetric
            icon={<ListChecksIcon aria-hidden />}
            label="Milestones"
            value={`${play.completed_milestone_count ?? 0} complete`}
          />
          <PlayMetric
            icon={<PackageCheckIcon aria-hidden />}
            label="Pokedex"
            value={getMainlinePlayPokedexLine(play)}
          />
        </dl>
      </CardContent>
      <CardFooter className="justify-between gap-3">
        <span className="text-muted-foreground text-xs">
          {getMainlinePlayTrainerLine(play)}
        </span>
        <span className="text-muted-foreground text-xs">
          {formatMainlinePlaytime(play.playtime_minutes)}
        </span>
      </CardFooter>
    </Card>
  );
};
