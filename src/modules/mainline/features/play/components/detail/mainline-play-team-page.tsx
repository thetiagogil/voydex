import {
  getActiveTeam,
  getReserveTeam,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import { PokemonDetail } from "@/modules/mainline/features/play/components/detail/team/pokemon-detail";
import { TeamRoster } from "@/modules/mainline/features/play/components/detail/team/team-roster";
import { TeamRosterSnapshot } from "@/modules/mainline/features/play/components/detail/team/team-roster-snapshot";
import { MainlinePlayShell } from "@/modules/mainline/features/play/components/detail/mainline-play-shell";
import {
  TeamCountBadge,
  TimelineRows,
} from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import { StatusBadge } from "@/shared/components/app/status-badge";
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type MainlinePlayTeamPageProps = {
  data: MainlinePlayDetailData;
};

export const MainlinePlayTeamPage = ({ data }: MainlinePlayTeamPageProps) => {
  const activeTeam = getActiveTeam(data.team);
  const reserveTeam = getReserveTeam(data.team);
  const selectedPokemon = activeTeam[0] ?? reserveTeam[0] ?? null;

  return (
    <MainlinePlayShell activeTab="team" data={data}>
      <div className="flex flex-col gap-5">
        <div className="flex flex-col gap-3 lg:flex-row lg:items-center lg:justify-between">
          <div className="flex flex-wrap items-center gap-3">
            <h2 className="text-2xl font-semibold tracking-normal">Team</h2>
            <TeamCountBadge
              activeCount={activeTeam.length}
              reserveCount={reserveTeam.length}
            />
          </div>
          <div className="flex flex-wrap gap-2">
            <StatusBadge tone="neutral">Roster overview</StatusBadge>
            <StatusBadge tone="info">Team actions next</StatusBadge>
          </div>
        </div>

        <div className="grid gap-5 xl:grid-cols-[minmax(0,0.9fr)_minmax(0,1.1fr)]">
          <TeamRoster data={data} />
          <div className="flex flex-col gap-5">
            <PokemonDetail pokemon={selectedPokemon} />
            <TeamRosterSnapshot data={data} />
            <Card>
              <CardHeader>
                <CardTitle>Recent Team Events</CardTitle>
              </CardHeader>
              <CardContent>
                <TimelineRows events={data.timelineEvents} limit={3} />
              </CardContent>
            </Card>
          </div>
        </div>
      </div>
    </MainlinePlayShell>
  );
};
