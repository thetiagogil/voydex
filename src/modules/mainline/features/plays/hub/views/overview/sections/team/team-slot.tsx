import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayTeamPreviewMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getTeamMemberImageUrl,
  getTeamMemberName,
} from "@/modules/mainline/features/plays/hub/views/overview/sections/team/team-model";
import { TeamTypeList } from "./team-type-list";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type TeamSlotProps = {
  gameSlug: string | null;
  member: MainlinePlayTeamPreviewMember | null;
  slotNumber: number;
};

export const TeamSlot = ({ gameSlug, member, slotNumber }: TeamSlotProps) => {
  if (!member) {
    return (
      <div
        role="img"
        aria-label={`Empty team slot ${slotNumber}`}
        className="border-line bg-surface-2 flex min-h-40 min-w-0 flex-col items-center justify-center gap-2 rounded-lg border border-dashed p-3 text-center"
      >
        <span className="border-line bg-surface text-muted-foreground flex size-12 items-center justify-center rounded-full border border-dashed">
          <AppIcon icon={appIcons.product.team} size="md" aria-hidden />
        </span>
        <span className="text-muted-foreground text-xs font-medium">Empty</span>
      </div>
    );
  }

  const content = (
    <>
      <TeamTypeList
        primaryType={member.primaryType}
        secondaryType={member.secondaryType}
        className="pointer-events-none absolute top-2 right-2 flex-row flex-nowrap"
      />
      <PokemonPortrait
        alt={`${getTeamMemberName(member)} portrait`}
        imageUrl={getTeamMemberImageUrl(member)}
        sizes="(min-width: 640px) 6rem, 5rem"
        className="size-20 justify-self-center rounded-md border-0 bg-transparent sm:size-24"
        glowClassName="opacity-0"
        imageClassName="p-1"
      />
      <div className="grid min-w-0 justify-items-center gap-1.5">
        <div className="flex min-w-0 items-baseline justify-center gap-1.5">
          <h3 className="text-foreground min-w-0 truncate text-sm font-medium">
            {getTeamMemberName(member)}
          </h3>
          <p className="text-muted-foreground shrink-0 text-[0.6875rem]">
            {member.level ? `Lv. ${member.level}` : "Level unknown"}
          </p>
        </div>
      </div>
    </>
  );

  if (gameSlug && member.species_slug) {
    return (
      <Link
        href={appRoutes.codexPokemonGameSpecies(gameSlug, member.species_slug)}
        className="border-line bg-surface-2 hover:bg-muted/50 focus-visible:ring-ring relative grid min-h-40 min-w-0 content-end justify-items-center gap-1 rounded-lg border p-3 text-center transition-colors focus-visible:ring-2 focus-visible:outline-none"
      >
        {content}
      </Link>
    );
  }

  return (
    <article className="border-line bg-surface-2 relative grid min-h-40 min-w-0 content-center justify-items-center gap-2 rounded-lg border p-3 text-center">
      {content}
    </article>
  );
};
