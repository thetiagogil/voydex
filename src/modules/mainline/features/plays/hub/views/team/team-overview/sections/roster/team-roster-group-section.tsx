import { getTeamRosterSlots } from "@/modules/mainline/features/plays/hub/views/team/team-overview/sections/roster/team-roster-model";
import { TeamRosterRow } from "@/modules/mainline/features/plays/hub/views/team/team-overview/sections/roster/team-roster-row";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { ItemGroup } from "@/shared/components/ui/item";

type TeamRosterGroupSectionProps = {
  group: "active" | "reserve";
  onSelect: (member: MainlinePlayTeamMember) => void;
  roster: MainlinePlayTeamMember[];
  selectedMemberId: string | null;
};

export const TeamRosterGroupSection = ({
  group,
  onSelect,
  roster,
  selectedMemberId,
}: TeamRosterGroupSectionProps) => {
  const slots = getTeamRosterSlots(roster, group);
  const title = group === "active" ? "Active" : "Reserve";
  const headingId = `team-${group}-heading`;

  return (
    <section aria-labelledby={headingId} className="grid gap-2">
      <h3 id={headingId} className="text-foreground text-sm font-semibold">
        {title}
      </h3>

      <ItemGroup className="gap-1">
        {slots.map((slot) => (
          <TeamRosterRow
            key={`${group}-${slot.position}`}
            label={slot.label}
            member={slot.member}
            isSelected={slot.member?.play_pokemon_id === selectedMemberId}
            onSelect={onSelect}
          />
        ))}
      </ItemGroup>
    </section>
  );
};
