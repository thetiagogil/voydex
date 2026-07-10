import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { TeamTypeList } from "@/modules/mainline/features/plays/detail/components/overview/team/team-type-list";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import {
  getTeamMemberImageUrl,
  getTeamMemberName,
} from "@/modules/mainline/features/plays/detail/components/overview/team/team-model";

type TeamSlotProps = {
  gameSlug: string | null;
  member: MainlinePlayTeamMember | null;
  slotNumber: number;
};

export const TeamSlot = ({ gameSlug, member, slotNumber }: TeamSlotProps) => {
  if (!member) {
    return (
      <button
        type="button"
        disabled
        aria-label={`Empty team slot ${slotNumber}`}
        className="border-app-surface-border bg-muted/20 flex aspect-square min-w-0 items-center justify-center rounded-lg border border-dashed p-2"
      >
        <span className="border-app-surface-border bg-card text-muted-foreground flex size-9 items-center justify-center rounded-full border border-dashed">
          <AppIcon icon={appIcons.actions.create} size="md" aria-hidden />
        </span>
      </button>
    );
  }

  const content = (
    <>
      <PokemonPortrait
        alt={`${getTeamMemberName(member)} portrait`}
        imageUrl={getTeamMemberImageUrl(member)}
        sizes="8rem"
        className="size-12 rounded-md border-0 bg-transparent"
        glowClassName="opacity-0"
        imageClassName="p-1"
      />
      <div className="grid min-w-0 justify-items-center gap-1">
        <h3 className="text-foreground truncate text-sm font-medium">
          {getTeamMemberName(member)}
        </h3>
        <div className="flex min-w-0 items-center justify-center gap-1.5">
          <p className="text-muted-foreground text-xs">
            {member.level ? `Lv. ${member.level}` : "Level unknown"}
          </p>
          <TeamTypeList
            primaryType={member.primaryType}
            secondaryType={member.secondaryType}
          />
        </div>
      </div>
    </>
  );

  if (gameSlug && member.species_slug) {
    return (
      <Link
        href={appRoutes.codexPokemonGameSpecies(gameSlug, member.species_slug)}
        className="border-app-surface-border hover:bg-muted focus-visible:ring-ring grid min-w-0 content-start justify-items-center gap-1 rounded-lg border p-2 text-center transition-colors focus-visible:ring-2 focus-visible:outline-none"
      >
        {content}
      </Link>
    );
  }

  return (
    <article className="border-app-surface-border grid min-w-0 content-start justify-items-center gap-1 rounded-lg border p-2 text-center">
      {content}
    </article>
  );
};
