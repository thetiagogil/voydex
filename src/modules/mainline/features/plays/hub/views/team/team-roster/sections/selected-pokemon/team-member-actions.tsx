import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { IconTip } from "@/shared/components/icon-tip";
import { cn } from "@/shared/utils/cn";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";

import { canEditTeamMember } from "./team-member-model";

/*
 * The selected Pokémon's two actions as icon buttons in the top corner of
 * its art (on the type's tint): Edit, which opens the editor where Evolve,
 * Replace, Retire and the rest live, and Open in Codex. Each names itself
 * in a tooltip. A Pokémon that retired or was replaced has only Open in
 * Codex: History keeps it as it was.
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
      {canEditTeamMember(member) ? (
        <IconTip
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
      ) : null}
      <IconTip
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
