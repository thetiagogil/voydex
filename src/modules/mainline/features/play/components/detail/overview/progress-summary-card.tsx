import Link from "next/link";
import { BookOpen, ChevronRight } from "lucide-react";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import { formatPercent } from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { ProgressMeter } from "@/shared/components/app/progress-meter";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardAction,
  CardContent,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type ProgressSummaryCardProps = {
  data: MainlinePlayDetailData;
};

export const ProgressSummaryCard = ({ data }: ProgressSummaryCardProps) => {
  const playId = String(data.overview.play_id);
  const rows = [
    {
      href: appRoutes.mainlinePlayStory(playId),
      label: "Story Progress",
      value: data.overview.milestone_completion_percent,
    },
    {
      href: appRoutes.mainlinePlayPokedex(playId),
      label: "Pokedex",
      value: data.overview.pokedex_completion_percent,
    },
    {
      href: appRoutes.mainlinePlayCollectibles(playId),
      label: "Collectibles",
      value: data.overview.collectible_completion_percent,
    },
  ];

  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <BookOpen className="text-primary size-5" />
          Progress Summary
        </CardTitle>
        <CardAction>
          <Button
            render={<Link href={appRoutes.mainlinePlayProgress(playId)} />}
            nativeButton={false}
            variant="ghost"
            size="sm"
          >
            View all
            <ChevronRight data-icon="inline-end" />
          </Button>
        </CardAction>
      </CardHeader>
      <CardContent className="flex flex-col gap-3">
        {rows.map((row) => (
          <Link
            key={row.label}
            href={row.href}
            className="hover:bg-muted/50 grid gap-3 rounded-lg border p-3 transition-colors sm:grid-cols-[minmax(0,1fr)_10rem_auto]"
          >
            <span className="font-medium">{row.label}</span>
            <ProgressMeter value={row.value ?? 0} />
            <span className="text-muted-foreground text-sm">
              {formatPercent(row.value)}
            </span>
          </Link>
        ))}
      </CardContent>
    </Card>
  );
};
