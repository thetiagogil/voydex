import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import { TeamRosterGroupSection } from "@/modules/mainline/features/plays/hub/views/team/sections/roster/team-roster-group-section";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

type TeamRosterCardProps = {
  onSelect: (member: MainlinePlayTeamMember) => void;
  roster: MainlinePlayTeamMember[];
  selectedMemberId: string | null;
};

export const TeamRosterCard = ({
  onSelect,
  roster,
  selectedMemberId,
}: TeamRosterCardProps) => {
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
