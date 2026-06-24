import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  formatNumber,
  formatPercent,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { ProgressMeter } from "@/shared/components/progress-meter";
import { StatusBadge } from "@/shared/components/status-badge";
import { Card, CardContent } from "@/shared/components/ui/card";

type OverallCompletionCardProps = {
  overview: MainlinePlayDetailData["overview"];
};

export const OverallCompletionCard = ({
  overview,
}: OverallCompletionCardProps) => {
  const completedUnits = overview.completed_completion_unit_count ?? 0;
  const totalUnits = overview.total_completion_unit_count ?? 0;

  return (
    <Card>
      <CardContent className="grid gap-5 lg:grid-cols-[minmax(0,1fr)_minmax(0,1fr)] lg:items-center">
        <div className="grid gap-3 sm:grid-cols-[auto_minmax(0,1fr)] sm:items-center">
          <div>
            <p className="text-muted-foreground text-sm">Overall completion</p>
            <p className="text-primary text-4xl font-semibold">
              {formatPercent(overview.overall_completion_percent)}
            </p>
          </div>
          <ProgressMeter
            value={overview.overall_completion_percent ?? 0}
            label={`${formatNumber(completedUnits)} / ${formatNumber(totalUnits)} completed`}
          />
        </div>

        <div className="grid gap-3 sm:grid-cols-2">
          <div className="rounded-lg border p-3">
            <p className="text-muted-foreground mb-2 text-sm">
              Included in completion
            </p>
            <div className="flex flex-wrap gap-2">
              <StatusBadge tone="success">Story</StatusBadge>
              {overview.include_pokedex_in_completion ? (
                <StatusBadge tone="success">Pokedex</StatusBadge>
              ) : null}
              {overview.include_collectibles_in_completion ? (
                <StatusBadge tone="success">Collectibles</StatusBadge>
              ) : null}
            </div>
          </div>

          <div className="rounded-lg border p-3">
            <p className="text-muted-foreground mb-2 text-sm">
              Excluded from completion
            </p>
            <div className="flex flex-wrap gap-2">
              {!overview.include_optional_pokedex_entries_in_completion ? (
                <StatusBadge tone="neutral">Optional entries</StatusBadge>
              ) : null}
              {!overview.include_optional_pokedexes_in_completion ? (
                <StatusBadge tone="neutral">Optional Pokedexes</StatusBadge>
              ) : null}
              {overview.include_optional_pokedex_entries_in_completion &&
              overview.include_optional_pokedexes_in_completion ? (
                <StatusBadge tone="neutral">No exclusions</StatusBadge>
              ) : null}
            </div>
          </div>
        </div>
      </CardContent>
    </Card>
  );
};
