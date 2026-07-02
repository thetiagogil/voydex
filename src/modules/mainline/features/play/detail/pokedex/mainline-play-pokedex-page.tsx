import {
  MainlinePlaySectionCard,
  MainlinePlaySectionList,
} from "@/modules/mainline/features/play/detail/shared/components/mainline-play-section-card";
import { MainlinePlayShell } from "@/modules/mainline/features/play/detail/shared/components/mainline-play-shell";
import {
  formatDexNumber,
  formatNumber,
  formatPercent,
  getPokedexDisplayName,
} from "@/modules/mainline/features/play/detail/shared/display/play-detail-display";
import type {
  MainlinePlayDetailData,
  MainlinePlayPokedexEntry,
} from "@/modules/mainline/features/play/types";
import { StatusBadge } from "@/shared/components/status-badge";

type MainlinePlayPokedexPageProps = {
  data: MainlinePlayDetailData;
};

const getPokedexEntryKey = (entry: MainlinePlayPokedexEntry, index: number) => {
  return `${entry.species_id ?? "species"}-${entry.pokedex_id ?? "pokedex"}-${index}`;
};

const renderPokedexEntry = (entry: MainlinePlayPokedexEntry) => {
  return (
    <div className="flex items-start justify-between gap-3">
      <div className="min-w-0">
        <div className="font-medium">{getPokedexDisplayName(entry)}</div>
        <div className="text-muted-foreground text-sm">
          {formatDexNumber(entry.pokedex_number ?? entry.national_number)} ·{" "}
          {entry.pokedex_name ?? "Pokédex"}
        </div>
      </div>
      <div className="flex shrink-0 flex-wrap justify-end gap-2">
        {entry.is_seen ? <StatusBadge tone="info">Seen</StatusBadge> : null}
        {entry.is_caught ? (
          <StatusBadge tone="success">Caught</StatusBadge>
        ) : null}
        {!entry.is_seen && !entry.is_caught ? (
          <StatusBadge tone="neutral">Open</StatusBadge>
        ) : null}
      </div>
    </div>
  );
};

export const MainlinePlayPokedexPage = ({
  data,
}: MainlinePlayPokedexPageProps) => {
  const play = data.overview;

  return (
    <MainlinePlayShell
      activeProgressTab="pokedex"
      activeTab="progress"
      data={data}
    >
      <div className="grid gap-5">
        <MainlinePlaySectionCard
          title="Pokédex"
          description="Read-only Pokédex progress while seen/caught actions are rebuilt."
          metrics={[
            { label: "Seen", value: formatNumber(play.pokedex_seen_count) },
            { label: "Caught", value: formatNumber(play.pokedex_caught_count) },
            {
              label: "Required",
              value: formatNumber(play.required_pokedex_species_count),
            },
            {
              label: "Completion",
              value: formatPercent(play.pokedex_completion_percent),
            },
          ]}
        />

        <MainlinePlaySectionCard
          title="Entries"
          description={`${formatNumber(
            data.pokedexEntries.length,
          )} seeded entries are loaded for this play.`}
        >
          <MainlinePlaySectionList
            emptyLabel="No Pokédex entries are available yet."
            getKey={getPokedexEntryKey}
            items={data.pokedexEntries.slice(0, 24)}
            renderItem={renderPokedexEntry}
          />
        </MainlinePlaySectionCard>
      </div>
    </MainlinePlayShell>
  );
};
