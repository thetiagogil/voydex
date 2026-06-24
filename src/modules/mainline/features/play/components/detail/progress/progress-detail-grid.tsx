import Link from "next/link";
import { ChevronRight, Sparkles } from "lucide-react";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import { StatusBadge } from "@/shared/components/status-badge";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type ProgressDetailGridProps = {
  data: MainlinePlayDetailData;
  nextMilestone: MainlinePlayDetailData["milestones"][number] | null;
  playId: string;
};

export const ProgressDetailGrid = ({
  data,
  nextMilestone,
  playId,
}: ProgressDetailGridProps) => {
  return (
    <div className="grid gap-5 lg:grid-cols-3">
      <Card>
        <CardHeader>
          <CardTitle>Next to update</CardTitle>
        </CardHeader>
        <CardContent className="flex flex-col gap-3">
          <Link
            href={appRoutes.mainlinePlayStory(playId)}
            className="hover:bg-muted/50 flex items-center justify-between gap-3 rounded-lg border p-3"
          >
            <span>
              <span className="block font-medium">
                {nextMilestone?.milestone_name ?? "No story target"}
              </span>
              <span className="text-muted-foreground text-sm">
                {nextMilestone?.milestone_game_name ?? "Story complete"}
              </span>
            </span>
            <ChevronRight className="text-muted-foreground size-4" />
          </Link>
        </CardContent>
      </Card>

      <Card>
        <CardHeader>
          <CardTitle>Completion rules</CardTitle>
          <CardDescription>
            Rules are read from the seeded play configuration.
          </CardDescription>
        </CardHeader>
        <CardContent className="flex flex-col gap-2 text-sm">
          <div className="flex items-center justify-between gap-3">
            <span>Pokedex counts</span>
            <StatusBadge tone="neutral">Caught species</StatusBadge>
          </div>
          <div className="flex items-center justify-between gap-3">
            <span>Collectibles count</span>
            <StatusBadge tone="neutral">Required entries</StatusBadge>
          </div>
          <div className="flex items-center justify-between gap-3">
            <span>Optional entries</span>
            <StatusBadge tone="neutral">
              {data.overview.include_optional_pokedex_entries_in_completion
                ? "Included"
                : "Excluded"}
            </StatusBadge>
          </div>
        </CardContent>
      </Card>

      <Card>
        <CardHeader>
          <CardTitle>Recent progress activity</CardTitle>
        </CardHeader>
        <CardContent className="flex flex-col gap-3">
          {data.timelineEvents.length ? (
            data.timelineEvents.slice(0, 3).map((event) => (
              <div
                key={event.event_id}
                className="grid grid-cols-[auto_minmax(0,1fr)] gap-3 rounded-lg border p-3"
              >
                <Sparkles className="text-primary size-5" />
                <div className="min-w-0">
                  <p className="truncate font-medium">
                    {event.title ?? event.event_type_name ?? "Play event"}
                  </p>
                  <p className="text-muted-foreground truncate text-sm">
                    {event.body ?? "No details logged"}
                  </p>
                </div>
              </div>
            ))
          ) : (
            <div className="text-muted-foreground rounded-lg border border-dashed p-4 text-sm">
              No progress activity has been logged yet.
            </div>
          )}
        </CardContent>
      </Card>
    </div>
  );
};
