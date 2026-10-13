import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";

/*
 * Edit is the panel's main button and Open in Codex its secondary. Edit
 * opens the editor, where Evolve, Replace, Retire and the rest live. In a
 * sheet's footer the two buttons share the width.
 */
export const TeamMemberActions = ({
  className,
  member,
  onEdit,
  stretch = false,
  versionGroupSlug,
}: {
  className?: string;
  member: MainlinePlayTeamMember;
  onEdit: () => void;
  stretch?: boolean;
  versionGroupSlug: string | null;
}) => {
  const name = getPlayTeamMemberName(member);
  const codexHref =
    versionGroupSlug && member.species_slug
      ? appRoutes.codexPokemonEntry(versionGroupSlug, member.species_slug)
      : null;
  const buttonClassName = stretch ? "min-w-0 flex-1" : undefined;
  const codexContent = (
    <>
      <AppIcon icon={appIcons.actions.browseCodex} inline="start" />
      <span className="min-w-0 truncate">Open in Codex</span>
    </>
  );

  return (
    <div
      className={cn(
        "flex gap-2.5",
        stretch ? "flex-nowrap gap-2" : "flex-wrap",
        className,
      )}
    >
      <Button type="button" onClick={onEdit} className={buttonClassName}>
        <AppIcon icon={appIcons.actions.edit} inline="start" />
        <span className="min-w-0 truncate">Edit {name}</span>
      </Button>
      {codexHref ? (
        <Button
          render={<Link href={codexHref} />}
          nativeButton={false}
          variant="outline"
          className={buttonClassName}
        >
          {codexContent}
        </Button>
      ) : (
        <Button
          type="button"
          variant="outline"
          disabled
          aria-label="Open in Codex (not available yet)"
          className={buttonClassName}
        >
          {codexContent}
        </Button>
      )}
    </div>
  );
};
