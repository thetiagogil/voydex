import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { cn } from "@/shared/utils/cn";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";

/* What the Pokémon editor will do once it ships. */
const editorActions: Array<{ icon: AppIconComponent; label: string }> = [
  { icon: appIcons.actions.move, label: "Move slot" },
  { icon: appIcons.product.replaced, label: "Replace" },
  { icon: appIcons.product.evolved, label: "Evolve" },
  { icon: appIcons.product.retired, label: "Retire" },
];

/*
 * The editor's actions, listed and disabled until it ships. Beside the panel's
 * buttons on wide screens; next to a sheet's close button on phones.
 */
export const TeamMemberMoreActions = ({
  className,
  member,
  variant = "outline",
}: {
  className?: string;
  member: MainlinePlayTeamMember;
  variant?: "ghost" | "outline";
}) => {
  return (
    <DropdownMenu>
      <DropdownMenuTrigger
        render={
          <Button
            type="button"
            variant={variant}
            size="icon"
            aria-label={`More actions for ${getPlayTeamMemberName(member)}`}
            className={className}
          />
        }
      >
        <AppIcon icon={appIcons.actions.more} />
      </DropdownMenuTrigger>
      <DropdownMenuContent align="end" className="w-52">
        <DropdownMenuGroup>
          <DropdownMenuLabel>Not available yet</DropdownMenuLabel>
          {editorActions.map(({ icon, label }) => (
            <DropdownMenuItem key={label} disabled>
              <AppIcon icon={icon} />
              {label}
            </DropdownMenuItem>
          ))}
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};

/*
 * Edit is the panel's main button and Open in Codex its secondary. Editing
 * isn't available yet, so Edit stays disabled. In a sheet's footer the two
 * buttons share the width, and the editor's actions move to the sheet's head.
 */
export const TeamMemberActions = ({
  className,
  versionGroupSlug,
  member,
  stretch = false,
}: {
  className?: string;
  versionGroupSlug: string | null;
  member: MainlinePlayTeamMember;
  stretch?: boolean;
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
      <Button
        type="button"
        disabled
        aria-label={`Edit ${name} (not available yet)`}
        className={buttonClassName}
      >
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
      {stretch ? null : <TeamMemberMoreActions member={member} />}
    </div>
  );
};
