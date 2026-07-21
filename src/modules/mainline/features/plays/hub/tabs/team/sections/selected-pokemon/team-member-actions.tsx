import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

const TeamMemberDisabledAction = ({
  className,
  icon,
  label,
}: {
  className?: string;
  icon: AppIconComponent;
  label: string;
}) => {
  return (
    <Button
      disabled
      variant="outline"
      size="sm"
      className={cn("min-w-32 flex-1 justify-center", className)}
      aria-label={`${label} (not available yet)`}
    >
      <AppIcon icon={icon} inline="start" aria-hidden />
      {label}
    </Button>
  );
};

export const TeamMemberActions = ({
  gameSlug,
  member,
}: {
  gameSlug: string | null;
  member: MainlinePlayTeamMember;
}) => {
  const codexHref =
    gameSlug && member.species_slug
      ? appRoutes.codexPokemonGameSpecies(gameSlug, member.species_slug)
      : null;

  return (
    <section aria-label="Quick actions">
      <div className="flex flex-wrap gap-2">
        {codexHref ? (
          <Link
            href={codexHref}
            className={buttonVariants({
              variant: "outline",
              size: "sm",
              className: "min-w-32 flex-1 justify-center",
            })}
          >
            <AppIcon
              icon={appIcons.actions.browseCodex}
              inline="start"
              aria-hidden
            />
            Open in Codex
          </Link>
        ) : (
          <TeamMemberDisabledAction
            icon={appIcons.actions.browseCodex}
            label="Open in Codex"
          />
        )}
        <TeamMemberDisabledAction
          icon={appIcons.actions.move}
          label="Move slot"
        />
        <TeamMemberDisabledAction
          icon={appIcons.product.replaced}
          label="Replace"
        />
        <TeamMemberDisabledAction
          icon={appIcons.product.evolved}
          label="Evolve"
        />
        <TeamMemberDisabledAction
          icon={appIcons.product.retired}
          label="Retire"
        />
      </div>
    </section>
  );
};
