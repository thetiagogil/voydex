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
    <ul
      aria-label="Your team then"
      className="grid max-w-[22rem] grid-cols-6 gap-2"
    >
      {members.map((member) => {
        const name = getPlayTeamSnapshotMemberName(member);

        return (
          <li
            key={`${member.position}-${member.speciesName}-${member.formName ?? ""}`}
            title={name}
            className="sticker grid aspect-square place-items-center rounded-md [--t:var(--mute)]"
          >
            {member.imageUrl ? (
              // eslint-disable-next-line @next/next/no-img-element
              <img
                src={member.imageUrl}
                alt={name}
                loading="lazy"
                className="size-[88%] object-contain"
              />
            ) : (
              <span className="text-ink-3 text-13 font-extrabold">
                <span aria-hidden>?</span>
                <span className="sr-only">{name}, image unavailable</span>
              </span>
            )}
          </li>
        );
      })}
    </ul>
  );
};
