import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import type {
  MainlinePlayBrowseTeam,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/shared/types";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type PlaySummaryTeamPreviewProps = {
  team: MainlinePlayBrowseTeam;
};

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

export const PlaySummaryTeamPreview = ({
  team,
}: PlaySummaryTeamPreviewProps) => {
  const slots = getTeamSlots(team.members);

  return (
    <div className="flex min-w-0 flex-col gap-1.5">
      {team.state === "unavailable" ? (
        <p className="text-muted-foreground text-xs">Team unavailable</p>
      ) : null}

      <div
        role="group"
        aria-label="Active Team"
        className="grid w-full max-w-sm grid-cols-6 gap-1.5 sm:gap-2 md:max-w-md md:gap-1.5 xl:max-w-lg xl:gap-2"
      >
        {slots.map((member, index) => {
          const slotNumber = index + 1;

          if (team.state === "unavailable") {
            return (
              <div
                key={slotNumber}
                role="img"
                aria-label={`Active team slot ${slotNumber} unavailable`}
                className="border-line bg-surface-2 text-muted-foreground/70 flex aspect-square min-w-0 items-center justify-center rounded-lg border border-dashed"
              >
                <AppIcon icon={appIcons.status.warning} size="sm" aria-hidden />
              </div>
            );
          }

          if (!member) {
            return (
              <div
                key={slotNumber}
                role="img"
                aria-label={`Active team slot ${slotNumber} not recorded`}
                className="border-line bg-surface-2 text-muted-foreground/65 flex aspect-square min-w-0 items-center justify-center rounded-lg border"
              >
                <AppIcon
                  icon={appIcons.product.form}
                  size="sm"
                  className="opacity-25"
                  aria-hidden
                />
              </div>
            );
          }

          const memberName = getPlayTeamMemberName(member);

          return (
            <PokemonPortrait
              key={member.play_pokemon_id ?? `${slotNumber}-${memberName}`}
              alt={`${memberName} in active team slot ${slotNumber}`}
              imageUrl={getPlayTeamMemberImageUrl(member)}
              sizes="(min-width: 1280px) 4rem, (min-width: 768px) 2.75rem, (min-width: 640px) 3.75rem, 15vw"
              className="border-line bg-surface-2 w-full rounded-lg"
              glowClassName="opacity-0"
              imageClassName="p-1"
            />
          );
        })}
      </div>
    </div>
  );
};
