import Link from "next/link";
import type { ReactElement } from "react";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";

const ActionTip = ({
  label,
  trigger,
}: {
  label: string;
  trigger: ReactElement;
}) => (
  <Tooltip>
    <TooltipTrigger render={trigger} />
    <TooltipContent>{label}</TooltipContent>
  </Tooltip>
);

/*
 * The selected Pokémon's two actions as icon buttons in the top corner of
 * its art (on the type's tint): Edit, which opens the editor where Evolve,
 * Replace, Retire and the rest live, and Open in Codex. Each names itself
 * in a tooltip.
 */
export const TeamMemberActions = ({
  className,
  member,
  onEdit,
  versionGroupSlug,
}: {
  className?: string;
  member: MainlinePlayTeamMember;
  onEdit: () => void;
  versionGroupSlug: string | null;
}) => {
  const name = getPlayTeamMemberName(member);
  const codexHref =
    versionGroupSlug && member.species_slug
      ? appRoutes.codexPokemonEntry(versionGroupSlug, member.species_slug)
      : null;
  const editLabel = `Edit ${name}`;
  const codexLabel = codexHref
    ? "Open in Codex"
    : "Open in Codex (not available yet)";

  return (
    <div className={cn("flex gap-2", className)}>
      <ActionTip
        label={editLabel}
        trigger={
          <Button
            type="button"
            variant="tint"
            size="icon"
            aria-label={editLabel}
            onClick={onEdit}
          >
            <AppIcon icon={appIcons.actions.edit} />
          </Button>
        }
      />
      <ActionTip
        label={codexLabel}
        trigger={
          codexHref ? (
            <Button
              render={<Link href={codexHref} />}
              nativeButton={false}
              variant="tint"
              size="icon"
              aria-label={codexLabel}
            >
              <AppIcon icon={appIcons.actions.browseCodex} />
            </Button>
          ) : (
            <Button
              type="button"
              variant="tint"
              size="icon"
              disabled
              aria-label={codexLabel}
            >
              <AppIcon icon={appIcons.actions.browseCodex} />
            </Button>
          )
        }
      />
    </div>
  );
};
