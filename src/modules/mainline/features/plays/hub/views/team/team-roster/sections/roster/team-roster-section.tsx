import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

import { TeamRosterGroupSection } from "./team-roster-group-section";

type TeamRosterSectionProps = {
  onSelect: (member: MainlinePlayTeamMember) => void;
  roster: MainlinePlayTeamMember[];
  selectedMemberId: string | null;
};

export const TeamRosterSection = ({
  onSelect,
  roster,
  selectedMemberId,
}: TeamRosterSectionProps) => {
  const addPokemonLabel = "Add Pokémon will be enabled with the Team picker";

  return (
    <MainlinePlaySectionCard
      title="Roster"
      action={
        <div className="flex items-center gap-2">
          <Button
            type="button"
            size="sm"
            disabled
            title={addPokemonLabel}
            aria-label={addPokemonLabel}
          >
            <AppIcon
              icon={appIcons.actions.create}
              inline="start"
              aria-hidden
            />
            Add Pokémon
          </Button>
        </div>
      }
      contentClassName="grid gap-4"
      showSeparator
    >
      <TeamRosterGroupSection
        group="active"
        roster={roster}
        selectedMemberId={selectedMemberId}
        onSelect={onSelect}
      />
      <TeamRosterGroupSection
        group="reserve"
        roster={roster}
        selectedMemberId={selectedMemberId}
        onSelect={onSelect}
      />
    </MainlinePlaySectionCard>
  );
};
