import type { PlayBrowseTeam } from "@/modules/mainline/features/plays/shared/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { getPlayTeamSlots } from "@/modules/mainline/features/plays/shared/utils/play-team-slots";
import { cn } from "@/shared/utils/cn";

type PlayCardTeamProps = {
  className?: string;
  team: PlayBrowseTeam;
};

/* The active team as plain sprites; open slots are small dashed rings. */
export const PlayCardTeam = ({ className, team }: PlayCardTeamProps) => {
  if (team.state === "unavailable") {
    return (
      <p className={cn("text-ink-3 text-13 font-semibold", className)}>
        Team unavailable
      </p>
    );
  }

  return (
    <ul
      aria-label="Active team"
      className={cn("grid grid-cols-[repeat(6,52px)] gap-0.5", className)}
    >
      {getPlayTeamSlots(team.members).map(({ member, position }) => {
        const imageUrl = member ? getPlayTeamMemberImageUrl(member) : null;
        const memberName = member ? getPlayTeamMemberName(member) : null;

        return (
          <li
            key={member?.play_pokemon_id ?? `open-${position}`}
            className="grid size-13 place-items-center"
          >
            {member && imageUrl ? (
              // eslint-disable-next-line @next/next/no-img-element
              <img
                src={imageUrl}
                alt={memberName ?? ""}
                title={memberName ?? undefined}
                loading="lazy"
                className="size-13 object-contain"
              />
            ) : member ? (
              <span
                role="img"
                aria-label={memberName ?? undefined}
                title={memberName ?? undefined}
                className="bg-track text-ink-2 text-12 grid size-8 place-items-center rounded-full font-extrabold"
              >
                {memberName?.charAt(0)}
              </span>
            ) : (
              <span className="empty-slot size-7 rounded-full">
                <span className="sr-only">Open slot {position}</span>
              </span>
            )}
          </li>
        );
      })}
    </ul>
  );
};
