import type { StoryTeamSnapshotMember } from "../../types";
import { StoryPokemonEvidence } from "./story-pokemon-evidence";

export const StoryTeamSnapshot = ({
  members,
}: {
  members: StoryTeamSnapshotMember[];
}) => {
  return (
    <ul
      className="mt-2 grid grid-cols-2 gap-2"
      aria-label="Recorded Active Team snapshot"
    >
      {members.map((member) => {
        return (
          <li
            key={`${member.position}-${member.speciesName}-${member.formName ?? ""}`}
          >
            <StoryPokemonEvidence
              imageUrl={member.imageUrl}
              isShiny={member.isShiny}
              name={member.speciesName}
            />
          </li>
        );
      })}
    </ul>
  );
};
