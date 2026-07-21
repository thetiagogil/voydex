import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberImageUrl } from "@/modules/mainline/features/plays/shared/display/play-team-member-display";
import {
  getTeamMemberIdentity,
  getTeamMemberName,
} from "@/modules/mainline/features/plays/hub/tabs/team/display/team-member-display";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { Item, ItemActions } from "@/shared/components/ui/item";
import { cn } from "@/shared/utils/cn";

type TeamRosterRowProps = {
  isSelected: boolean;
  label: string;
  member: MainlinePlayTeamMember | null;
  onSelect: (member: MainlinePlayTeamMember) => void;
};

const TeamRosterSlotLabel = ({ label }: { label: string }) => {
  return (
    <span className="text-muted-foreground w-6 shrink-0 text-center text-xs font-semibold tabular-nums">
      {label}
    </span>
  );
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
        <TeamRosterSlotLabel label={label} />
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
    <Item
      role="listitem"
      variant={isSelected ? "muted" : "outline"}
      size="sm"
      className={cn(
        "border-app-surface-border/70 grid min-h-12 grid-cols-[1.5rem_minmax(0,1fr)_2.75rem_3.25rem_2rem] items-center gap-2 px-2 py-1.5",
        isSelected && "border-primary/40 bg-primary/6",
      )}
    >
      <button
        type="button"
        aria-label={`Select ${label}, ${memberName}`}
        aria-pressed={isSelected}
        onClick={() => onSelect(member)}
        className="focus-visible:ring-ring/40 col-span-4 grid min-w-0 grid-cols-subgrid items-center gap-2 rounded-md text-left outline-none focus-visible:ring-2"
      >
        <TeamRosterSlotLabel label={label} />

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
      </button>

      <ItemActions className="justify-self-end">
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
      </ItemActions>
    </Item>
  );
};
