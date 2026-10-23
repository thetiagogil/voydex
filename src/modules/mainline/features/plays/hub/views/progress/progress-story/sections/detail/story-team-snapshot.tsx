import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import {
  getPlayTeamSnapshotMemberName,
  type PlayTeamSnapshotMember,
} from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";

/*
 * The team as it stood when the milestone was recorded: small stickers. The
 * snapshot carries no types, so they wear the neutral tint.
 */
export const StoryTeamSnapshot = ({
  members,
}: {
  members: PlayTeamSnapshotMember[];
}) => {
  return (
    <ul aria-label="Your team then" className="grid grid-cols-6 gap-2">
      {members.map((member) => {
        const name = getPlayTeamSnapshotMemberName(member);

        return (
          <li
            key={`${member.position}-${member.speciesName}-${member.formName ?? ""}`}
          >
            {/* The avatar carries the name and its tip. */}
            <PokemonAvatar
              name={name}
              imageUrl={member.imageUrl}
              typeSlug={null}
            />
          </li>
        );
      })}
    </ul>
  );
};
