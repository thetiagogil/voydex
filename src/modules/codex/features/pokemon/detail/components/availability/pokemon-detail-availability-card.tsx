import { getPokemonDetailAvailabilityKey } from "@/modules/codex/features/pokemon/detail/components/availability/pokemon-detail-availability-display";
import { PokemonDetailAvailabilityRow } from "@/modules/codex/features/pokemon/detail/components/availability/pokemon-detail-availability-row";
import { pokemonDetailSectionTableGridClassName } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-section-grid";
import type {
  Game,
  PokemonAvailabilitySummary,
  VersionGroup,
} from "@/modules/codex/shared/types";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type PokemonDetailAvailabilityCardProps = {
  activeGame: Game | null;
  activeVersionGroup: VersionGroup | null;
  availability: PokemonAvailabilitySummary[];
};

export const PokemonDetailAvailabilityCard = ({
  activeGame,
  activeVersionGroup,
  availability,
}: PokemonDetailAvailabilityCardProps) => {
  return (
    <DetailSectionCard
      title="Availability"
      contentClassName="p-0"
      showSeparator
    >
      {availability.length ? (
        <div className="overflow-x-auto">
          <div
            className={`${pokemonDetailSectionTableGridClassName} text-muted-foreground px-4 py-2 text-xs`}
          >
            <div>Content</div>
            <div>Method</div>
            <div>Notes</div>
          </div>
          <div>
            {availability.map((availabilityRow, index) => (
              <PokemonDetailAvailabilityRow
                key={getPokemonDetailAvailabilityKey(availabilityRow, index)}
                activeGame={activeGame}
                activeVersionGroup={activeVersionGroup}
                availability={availabilityRow}
              />
            ))}
          </div>
        </div>
      ) : (
        <p className="text-muted-foreground px-4 py-4 text-sm">
          No availability data recorded for the selected scope.
        </p>
      )}
    </DetailSectionCard>
  );
};
