import { BarChart3, ClipboardList, Shield } from "lucide-react";

import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  formatNumber,
  getActiveTeam,
  getReserveTeam,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { getMoves } from "@/modules/mainline/features/play/components/detail/team/team-utils";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type TeamRosterSnapshotProps = {
  data: MainlinePlayDetailData;
};

export const TeamRosterSnapshot = ({ data }: TeamRosterSnapshotProps) => {
  const activeTeam = getActiveTeam(data.team);
  const reserveTeam = getReserveTeam(data.team);
  const speciesCount = new Set(
    data.team.map((pokemon) => pokemon.species_id).filter(Boolean),
  ).size;
  const movesLoggedCount = data.team.reduce(
    (total, pokemon) => total + getMoves(pokemon).length,
    0,
  );
  const heldItemCount = data.team.filter((pokemon) =>
    Boolean(pokemon.held_item_name),
  ).length;
  const items = [
    {
      description: `${formatNumber(activeTeam.length)} active, ${formatNumber(reserveTeam.length)} reserve`,
      icon: <Shield className="text-primary size-7" />,
      label: "Rostered Pokémon",
      value: formatNumber(data.team.length),
    },
    {
      description: "Unique species currently present in the roster.",
      icon: <BarChart3 className="text-warning size-7" />,
      label: "Species",
      value: formatNumber(speciesCount),
    },
    {
      description: `${formatNumber(movesLoggedCount)} moves, ${formatNumber(heldItemCount)} held items`,
      icon: <ClipboardList className="text-info size-7" />,
      label: "Logged Details",
      value: formatNumber(movesLoggedCount + heldItemCount),
    },
  ];

  return (
    <Card>
      <CardHeader>
        <CardTitle>Roster Snapshot</CardTitle>
        <CardDescription>
          Snapshot from the current roster data.
        </CardDescription>
      </CardHeader>
      <CardContent className="grid gap-3 md:grid-cols-3">
        {items.map((item) => (
          <div key={item.label} className="flex gap-3 rounded-lg border p-3">
            {item.icon}
            <div>
              <p className="text-2xl font-semibold">{item.value}</p>
              <p className="font-medium">{item.label}</p>
              <p className="text-muted-foreground text-sm">
                {item.description}
              </p>
            </div>
          </div>
        ))}
      </CardContent>
    </Card>
  );
};
