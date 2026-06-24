import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  formatNumber,
  formatPercent,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { ProgressMeter } from "@/shared/components/progress-meter";
import { StatusBadge } from "@/shared/components/status-badge";
import { Card, CardContent } from "@/shared/components/ui/card";

type PokedexSummaryProps = {
  data: MainlinePlayDetailData;
};

export const PokedexSummary = ({ data }: PokedexSummaryProps) => {
  const pokedexName = data.pokedexEntries[0]?.pokedex_name ?? "Pokedex";
  const caughtCount = data.overview.pokedex_caught_count ?? 0;
  const seenCount = data.overview.pokedex_seen_count ?? 0;
  const totalCount = data.pokedexEntries.length;
  const completionPercent = data.overview.pokedex_completion_percent ?? 0;
  const optionalStatus = data.overview
    .include_optional_pokedex_entries_in_completion
    ? "Optional entries included"
    : "Optional entries excluded";

  return (
    <Card>
      <CardContent className="grid gap-4 lg:grid-cols-[16rem_1fr_auto] lg:items-center">
        <div className="rounded-lg border p-3">
          <p className="text-muted-foreground text-sm">Active Pokedex</p>
          <p className="mt-1 font-medium">{pokedexName}</p>
        </div>

        <div className="grid gap-4 sm:grid-cols-3">
          <div>
            <p className="text-muted-foreground text-sm">Caught</p>
            <p className="text-2xl font-semibold">
              {formatNumber(caughtCount)}{" "}
              <span className="text-muted-foreground text-lg">
                / {formatNumber(totalCount)}
              </span>
            </p>
          </div>
          <div>
            <p className="text-muted-foreground text-sm">Seen</p>
            <p className="text-2xl font-semibold">{formatNumber(seenCount)}</p>
          </div>
          <div>
            <p className="text-muted-foreground text-sm">Completion</p>
            <div className="mt-1 flex items-center gap-3">
              <span className="text-2xl font-semibold">
                {formatPercent(completionPercent)}
              </span>
              <ProgressMeter value={completionPercent} />
            </div>
          </div>
        </div>

        <div className="flex flex-wrap gap-2 lg:justify-end">
          <StatusBadge tone="info">{optionalStatus}</StatusBadge>
          <StatusBadge tone="success">Species-level</StatusBadge>
        </div>
      </CardContent>
    </Card>
  );
};
