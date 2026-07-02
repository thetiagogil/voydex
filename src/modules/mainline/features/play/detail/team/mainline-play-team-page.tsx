import {
  MainlinePlaySectionCard,
  MainlinePlaySectionList,
} from "@/modules/mainline/features/play/detail/shared/components/mainline-play-section-card";
import { MainlinePlayShell } from "@/modules/mainline/features/play/detail/shared/components/mainline-play-shell";
import {
  formatDexNumber,
  formatNumber,
  getActiveTeam,
  getPokemonDisplayName,
  getReserveTeam,
} from "@/modules/mainline/features/play/detail/shared/display/play-detail-display";
import type {
  MainlinePlayDetailData,
  MainlinePlayTeamPokemon,
} from "@/modules/mainline/features/play/types";

type MainlinePlayTeamPageProps = {
  data: MainlinePlayDetailData;
};

const getRosterKey = (pokemon: MainlinePlayTeamPokemon, index: number) => {
  return (
    pokemon.play_pokemon_id ?? `${pokemon.species_id ?? "pokemon"}-${index}`
  );
};

const renderRosterPokemon = (pokemon: MainlinePlayTeamPokemon) => {
  return (
    <div className="flex items-start justify-between gap-3">
      <div className="min-w-0">
        <div className="font-medium">{getPokemonDisplayName(pokemon)}</div>
        <div className="text-muted-foreground text-sm">
          {formatDexNumber(pokemon.national_number)} ·{" "}
          {pokemon.species_name ?? pokemon.form_name ?? "Unknown species"}
        </div>
      </div>
      <div className="text-muted-foreground shrink-0 text-sm">
        {pokemon.level ? `Lv. ${pokemon.level}` : pokemon.roster_state_name}
      </div>
    </div>
  );
};

export const MainlinePlayTeamPage = ({ data }: MainlinePlayTeamPageProps) => {
  const activeTeam = getActiveTeam(data.team);
  const reserveTeam = getReserveTeam(data.team);

  return (
    <MainlinePlayShell activeTab="team" data={data}>
      <div className="grid gap-5">
        <MainlinePlaySectionCard
          title="Team"
          description="Read-only roster surface. Add, evolve, replace, and retire actions are intentionally out of this reset."
          metrics={[
            { label: "Active", value: formatNumber(activeTeam.length) },
            { label: "Reserve", value: formatNumber(reserveTeam.length) },
            {
              label: "Historical",
              value: formatNumber(data.overview.historical_pokemon_count),
            },
            { label: "Rows loaded", value: formatNumber(data.team.length) },
          ]}
        />

        <div className="grid gap-5 lg:grid-cols-2">
          <MainlinePlaySectionCard title="Active roster">
            <MainlinePlaySectionList
              emptyLabel="No active team members are available yet."
              getKey={getRosterKey}
              items={activeTeam.slice(0, 6)}
              renderItem={renderRosterPokemon}
            />
          </MainlinePlaySectionCard>

          <MainlinePlaySectionCard title="Reserve roster">
            <MainlinePlaySectionList
              emptyLabel="No reserve team members are available yet."
              getKey={getRosterKey}
              items={reserveTeam.slice(0, 6)}
              renderItem={renderRosterPokemon}
            />
          </MainlinePlaySectionCard>
        </div>
      </div>
    </MainlinePlayShell>
  );
};
