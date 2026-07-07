import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayPageData } from "@/modules/mainline/features/plays/types";
import { PageHeader } from "@/shared/components/page-header";
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { appIcons } from "@/shared/domain/icons/app-icons";

type MainlinePlayPageProps = {
  data: MainlinePlayPageData;
};

const formatDate = (value: string | null) => {
  if (!value) {
    return "Not set";
  }

  return new Intl.DateTimeFormat("en", {
    day: "numeric",
    month: "short",
    year: "numeric",
  }).format(new Date(value));
};

const formatMinutes = (value: number | null) => {
  if (value === null) {
    return "Not tracked";
  }

  const hours = Math.floor(value / 60);
  const minutes = value % 60;

  if (!hours) {
    return `${minutes}m`;
  }

  return `${hours}h ${minutes}m`;
};

export const MainlinePlayPage = ({ data }: MainlinePlayPageProps) => {
  const BackIcon = appIcons.actions.back;
  const { play } = data;

  return (
    <div className="flex flex-col gap-6">
      <Link
        href={appRoutes.mainlinePlays}
        className="text-muted-foreground hover:text-foreground flex w-fit items-center gap-1 text-sm font-medium transition-colors"
      >
        <BackIcon aria-hidden className="size-4" />
        Back to plays
      </Link>

      <PageHeader
        title={play.play_name ?? "Untitled play"}
        description={`${play.game_name ?? "Unknown game"}${play.status_name ? ` - ${play.status_name}` : ""}`}
      />

      <Card>
        <CardHeader>
          <CardTitle>Play summary</CardTitle>
        </CardHeader>
        <CardContent>
          <dl className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            <div>
              <dt className="text-muted-foreground text-xs">Trainer</dt>
              <dd className="text-foreground mt-1 font-medium">
                {play.trainer_name ?? "Unknown"}
              </dd>
            </div>
            <div>
              <dt className="text-muted-foreground text-xs">Status</dt>
              <dd className="text-foreground mt-1 font-medium">
                {play.status_name ?? "Unknown"}
              </dd>
            </div>
            <div>
              <dt className="text-muted-foreground text-xs">Playtime</dt>
              <dd className="text-foreground mt-1 font-medium">
                {formatMinutes(play.playtime_minutes)}
              </dd>
            </div>
            <div>
              <dt className="text-muted-foreground text-xs">Pokedex</dt>
              <dd className="text-foreground mt-1 font-medium">
                {play.pokedex_caught_count ?? 0} caught /{" "}
                {play.pokedex_seen_count ?? 0} seen
              </dd>
            </div>
            <div>
              <dt className="text-muted-foreground text-xs">Started</dt>
              <dd className="text-foreground mt-1 font-medium">
                {formatDate(play.started_on)}
              </dd>
            </div>
            <div>
              <dt className="text-muted-foreground text-xs">Updated</dt>
              <dd className="text-foreground mt-1 font-medium">
                {formatDate(play.updated_at)}
              </dd>
            </div>
          </dl>
        </CardContent>
      </Card>
    </div>
  );
};
