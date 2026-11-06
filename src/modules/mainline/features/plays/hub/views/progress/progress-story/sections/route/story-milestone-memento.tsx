import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { getPlayTeamSnapshotMemberName } from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";

import type { StoryMilestone } from "../../types";

/*
 * What you got at a recorded milestone, under its stop on the route (#199):
 * the Pokémon you chose (your first partner, the fossil's), as its portrait,
 * and the team you had then, small. Nothing when neither was recorded.
 */
export const StoryMilestoneMemento = ({
  milestone,
}: {
  milestone: StoryMilestone;
}) => {
  const team = milestone.snapshotMembers;
  const choice = milestone.decisionOptions.find(
    (option) => option.id === milestone.selectedDecisionId,
  );

  if (!milestone.selectedDecisionLabel && !team.length) {
    return null;
  }

  return (
    <span className="mt-1 flex flex-wrap items-center gap-x-3 gap-y-1">
      {/* The Pokémon you chose, as its portrait; a choice without one, by name. */}
      {choice?.imageUrl ? (
        <PokemonAvatar
          className="bubble size-10"
          imageUrl={choice.imageUrl}
          name={choice.speciesName ?? choice.label}
          typeSlug={null}
        />
      ) : milestone.selectedDecisionLabel ? (
        <span className="text-ink-2 text-13 font-bold">
          {milestone.selectedDecisionLabel}
        </span>
      ) : null}
      {team.length ? (
        <span aria-label="Your team then" className="flex -space-x-1">
          {team.map((member) => (
            <PokemonAvatar
              key={`${member.position}-${member.speciesName}-${member.formName ?? ""}`}
              className="bubble size-7"
              decorative
              imageUrl={member.imageUrl}
              name={getPlayTeamSnapshotMemberName(member)}
              typeSlug={null}
            />
          ))}
        </span>
      ) : null}
    </span>
  );
};
