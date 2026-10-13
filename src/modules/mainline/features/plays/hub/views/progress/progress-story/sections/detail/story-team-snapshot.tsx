import type { StoryTeamSnapshotMember } from "../../types";

/*
 * The team as it stood when the milestone was recorded: small tiles in the
 * sticker's white border and lip. The snapshot carries no types, so the tiles
 * stay neutral.
 */
export const StoryTeamSnapshot = ({
  members,
}: {
  members: StoryTeamSnapshotMember[];
}) => {
  return (
    <ul
      aria-label="Your team then"
      className="grid max-w-[22rem] grid-cols-6 gap-2"
    >
      {members.map((member) => {
        const name = `${member.formName ?? member.speciesName}${member.isShiny ? ", shiny" : ""}`;

        return (
          <li
            key={`${member.position}-${member.speciesName}-${member.formName ?? ""}`}
            title={name}
            className="bg-surface-2 grid aspect-square place-items-center rounded-md border-[3px] border-white shadow-[0_3px_0_var(--lip)]"
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
