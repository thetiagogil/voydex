import {
  getPlayTeamSnapshotMemberName,
  type PlayTeamSnapshotMember,
} from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";
import { cn } from "@/shared/utils/cn";

const partySize = 6;

const sizeClassNames = {
  md: "-ml-1.5 size-[34px]",
  sm: "-ml-1 size-[30px]",
};

/*
 * "Your team then" (v3 `.party`): the team saved with a milestone as small
 * overlapping sprites, beside its row or the last thing recorded. Phones
 * leave it out. Inside a control that already names the milestone, pass
 * `decorative`.
 */
export const PlayTeamParty = ({
  className,
  decorative = false,
  members,
  size = "md",
}: {
  className?: string;
  decorative?: boolean;
  members: PlayTeamSnapshotMember[];
  size?: "md" | "sm";
}) => {
  const party = members.filter((member) => member.imageUrl).slice(-partySize);

  if (!party.length) {
    return null;
  }

  const label = `Your team then: ${party
    .map(getPlayTeamSnapshotMemberName)
    .join(", ")}`;

  return (
    <span
      role={decorative ? undefined : "img"}
      aria-hidden={decorative || undefined}
      aria-label={decorative ? undefined : label}
      title="Your team then"
      className={cn("hidden shrink-0 pl-1.5 sm:flex", className)}
    >
      {party.map((member) => (
        // eslint-disable-next-line @next/next/no-img-element
        <img
          key={`${member.position}-${member.speciesName}`}
          src={member.imageUrl ?? undefined}
          alt=""
          loading="lazy"
          className={cn("max-w-none object-contain", sizeClassNames[size])}
        />
      ))}
    </span>
  );
};
