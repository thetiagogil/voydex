import {
  getPlayTeamSnapshotMemberName,
  type PlayTeamSnapshotMember,
} from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";
import { IconTip } from "@/shared/components/icon-tip";

const partySize = 6;

const sizeClassNames = {
  md: "-ml-1.5 size-8.5",
  sm: "-ml-1 size-7.5",
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
  const party = members.slice(-partySize);

  if (!party.length) {
    return null;
  }

  const label = `Your team then: ${party
    .map(getPlayTeamSnapshotMemberName)
    .join(", ")}`;

  return (
    <IconTip
      label="Your team then"
      trigger={
        <span
          role={decorative ? undefined : "img"}
          aria-hidden={decorative || undefined}
          aria-label={decorative ? undefined : label}
          className={cn("hidden shrink-0 pl-1.5 sm:flex", className)}
        >
          {party.map((member) => (
            <FallbackImage
              key={`${member.position}-${member.speciesName}`}
              src={member.imageUrl}
              name={member.formName ?? member.speciesName}
              fallback="badge"
              loading="lazy"
              className={cn("max-w-none object-contain", sizeClassNames[size])}
            />
          ))}
        </span>
      }
    />
  );
};
