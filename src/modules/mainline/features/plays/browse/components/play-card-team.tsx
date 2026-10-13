import type { PlayBrowseTeam } from "@/modules/mainline/features/plays/browse/types";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/shared/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { cn } from "@/shared/utils/cn";

type PlayCardTeamProps = {
  className?: string;
  team: PlayBrowseTeam;
};

/* Members sit in their recorded slot; anyone without one fills the next gap. */
const getTeamSlots = (members: MainlinePlayTeamMember[]) => {
  const slots = Array<MainlinePlayTeamMember | null>(6).fill(null);

  for (const member of members) {
    const recordedSlot = member.slot;
    const recordedIndex =
      typeof recordedSlot === "number" && recordedSlot >= 1 && recordedSlot <= 6
        ? recordedSlot - 1
        : -1;
    const slotIndex =
      recordedIndex >= 0 && !slots[recordedIndex]
        ? recordedIndex
        : slots.findIndex((slot) => !slot);

    if (slotIndex >= 0) {
      slots[slotIndex] = member;
    }
  }

  return slots;
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
      className={cn("grid grid-cols-[repeat(6,40px)] gap-0.5", className)}
    >
      {getTeamSlots(team.members).map((member, index) => {
        const slotNumber = index + 1;
        const imageUrl = member ? getPlayTeamMemberImageUrl(member) : null;
        const memberName = member ? getPlayTeamMemberName(member) : null;

        return (
          <li
            key={member?.play_pokemon_id ?? `open-${slotNumber}`}
            className="grid size-10 place-items-center"
          >
            {member && imageUrl ? (
              // eslint-disable-next-line @next/next/no-img-element
              <img
                src={imageUrl}
                alt={memberName ?? ""}
                title={memberName ?? undefined}
                loading="lazy"
                className="size-10 object-contain"
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
              <span className="border-dash size-7 rounded-full border-2 border-dashed">
                <span className="sr-only">Open slot {slotNumber}</span>
              </span>
            )}
          </li>
        );
      })}
    </ul>
  );
};
