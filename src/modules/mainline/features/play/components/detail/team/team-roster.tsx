import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  getActiveTeam,
  getPokemonDisplayName,
  getReserveTeam,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import {
  TeamCountBadge,
  TeamMemberRow,
} from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type TeamRosterProps = {
  data: MainlinePlayDetailData;
};

const EmptyRosterSlot = ({ index }: { index: number }) => {
  return (
    <div className="text-muted-foreground grid grid-cols-[auto_minmax(0,1fr)_auto] items-center gap-3 rounded-lg border border-dashed p-3 text-sm">
      <span className="flex size-7 items-center justify-center rounded-full border border-dashed">
        {index}
      </span>
      <span>Empty slot</span>
      <span>Reserve</span>
    </div>
  );
};

export const TeamRoster = ({ data }: TeamRosterProps) => {
  const activeTeam = getActiveTeam(data.team);
  const reserveTeam = getReserveTeam(data.team);
  const selectedPokemon = activeTeam[0] ?? reserveTeam[0] ?? null;
  const emptyReserveSlots = Math.max(6 - reserveTeam.length, 0);

  return (
    <Card>
      <CardHeader>
        <CardTitle>Team</CardTitle>
        <CardDescription className="flex flex-wrap items-center gap-2">
          <TeamCountBadge
            activeCount={activeTeam.length}
            reserveCount={reserveTeam.length}
          />
          {selectedPokemon ? (
            <span>Spotlight: {getPokemonDisplayName(selectedPokemon)}</span>
          ) : null}
        </CardDescription>
      </CardHeader>
      <CardContent className="flex flex-col gap-5">
        <div className="flex flex-col gap-2">
          <div className="flex items-center justify-between gap-3">
            <h3 className="font-medium">Active Team ({activeTeam.length}/6)</h3>
          </div>
          <div className="flex flex-col gap-2">
            {activeTeam.length ? (
              activeTeam.map((pokemon, index) => (
                <TeamMemberRow
                  key={pokemon.play_pokemon_id}
                  pokemon={pokemon}
                  isSelected={index === 0}
                />
              ))
            ) : (
              <div className="text-muted-foreground rounded-lg border border-dashed p-4 text-sm">
                No active Pokémon yet.
              </div>
            )}
          </div>
        </div>

        <div className="flex flex-col gap-2">
          <div className="flex items-center justify-between gap-3">
            <h3 className="font-medium">
              Reserve Team ({reserveTeam.length}/6)
            </h3>
          </div>
          <div className="flex flex-col gap-2">
            {reserveTeam.map((pokemon) => (
              <TeamMemberRow key={pokemon.play_pokemon_id} pokemon={pokemon} />
            ))}
            {Array.from({ length: emptyReserveSlots }).map((_, index) => (
              <EmptyRosterSlot
                key={index}
                index={reserveTeam.length + index + 1}
              />
            ))}
          </div>
        </div>

        <div className="bg-muted/50 text-muted-foreground rounded-lg border p-3 text-sm">
          Team actions are coming next. This view focuses on the current roster,
          moves, and logged details for now.
        </div>
      </CardContent>
    </Card>
  );
};
