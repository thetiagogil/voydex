import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberImageUrl } from "@/modules/mainline/features/plays/shared/display/play-team-member-display";
import {
  getTeamMemberIdentity,
  getTeamMemberName,
} from "@/modules/mainline/features/plays/hub/views/team/team-overview/display/team-member-display";
import { TeamSlotLabel } from "@/modules/mainline/features/plays/hub/views/team/shared/team-slot-label";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SelectableItem } from "@/shared/components/selectable-item";
import { Button } from "@/shared/components/ui/button";
import { Item } from "@/shared/components/ui/item";

type TeamRosterRowProps = {
  isSelected: boolean;
  label: string;
  member: MainlinePlayTeamMember | null;
  onSelect: (member: MainlinePlayTeamMember) => void;
};

export const TeamRosterRow = ({
  isSelected,
  label,
  member,
  onSelect,
}: TeamRosterRowProps) => {
  if (!member) {
    return (
      <Item
        role="listitem"
        variant="outline"
        size="sm"
        className="border-app-surface-border/60 grid min-h-12 grid-cols-[1.5rem_minmax(0,1fr)_2.75rem_3.25rem_2rem] items-center gap-2 border-dashed bg-transparent px-2 py-1.5"
      >
        <TeamSlotLabel label={label} />
        <span className="text-muted-foreground col-span-4 truncate text-sm">
          Empty slot
        </span>
      </Item>
    );
  }

  const memberName = getTeamMemberName(member);
  const memberIdentity = member.nickname ? getTeamMemberIdentity(member) : null;
  const actionsLabel = `Actions for ${memberName} are not available yet`;

  return (
    <SelectableItem
      selected={isSelected}
      onSelect={() => onSelect(member)}
      ariaLabel={`Select ${label}, ${memberName}`}
      className="min-h-12"
      buttonClassName="grid min-h-12 grid-cols-[1.5rem_minmax(0,1fr)_2.75rem_3.25rem] items-center gap-2 px-2 py-1.5"
      actionsClassName="items-center pr-2"
      actions={
        <Button
          type="button"
          variant="ghost"
          size="icon-xs"
          disabled
          title={actionsLabel}
          aria-label={actionsLabel}
        >
          <AppIcon icon={appIcons.actions.more} aria-hidden />
        </Button>
      }
    >
      <TeamSlotLabel label={label} />

      <span className="flex min-w-0 items-center gap-2">
        <PokemonPortrait
          alt={`${memberName} portrait`}
          imageUrl={getPlayTeamMemberImageUrl(member)}
          fallbackOnError
          sizes="2.25rem"
          className="border-app-surface-border/60 bg-background/50 size-9 rounded-md"
          glowClassName="opacity-0"
          imageClassName="p-1"
        />
        <span className="grid min-w-0 gap-0.5">
          <span className="text-foreground truncate text-sm font-medium">
            {memberName}
          </span>
          {memberIdentity ? (
            <span className="text-muted-foreground truncate text-xs">
              {memberIdentity}
            </span>
          ) : null}
        </span>
      </span>

      <span className="text-muted-foreground text-xs tabular-nums">
        {member.level ? `Lv. ${member.level}` : "Lv. —"}
      </span>

      <PokemonTypeList
        primaryType={member.primaryType}
        secondaryType={member.secondaryType}
        badgeDisplay="icon"
        badgeSize="sm"
        className="shrink-0 gap-1"
      />
    </SelectableItem>
  );
};
