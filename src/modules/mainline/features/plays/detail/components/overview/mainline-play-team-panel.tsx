import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type {
  MainlinePlayPokemonType,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { PokemonTypeBadge } from "@/shared/components/pokemon/pokemon-type-icon";
import { Badge } from "@/shared/components/ui/badge";
import { buttonVariants } from "@/shared/components/ui/button";
import { ButtonGroup } from "@/shared/components/ui/button-group";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";
import {
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
} from "@/shared/domain/pokemon/pokemon-images";

type MainlinePlayTeamPanelProps = {
  gameSlug: string | null;
  playId: string | null;
  team: MainlinePlayTeamMember[];
};

type MainlinePlayTeamSlotProps = {
  gameSlug: string | null;
  member: MainlinePlayTeamMember | null;
  slotNumber: number;
};

type MainlinePlayTeamTypeBadgeProps = {
  type: MainlinePlayPokemonType;
};

type MainlinePlayTeamTypeListProps = {
  primaryType: MainlinePlayPokemonType | null;
  secondaryType: MainlinePlayPokemonType | null;
};

const getTeamMemberName = (member: MainlinePlayTeamMember) => {
  return member.nickname ?? member.species_name ?? "Unknown Pokemon";
};

const getTeamMemberImageUrl = (member: MainlinePlayTeamMember) => {
  const imageForm = {
    name: member.form_name ?? member.species_name ?? "Pokemon",
    sprite_slug: member.sprite_slug,
  };

  if (member.is_shiny) {
    return (
      getPokemonFormShinyImageUrl(imageForm) ??
      getPokemonFormImageUrl(imageForm)
    );
  }

  return getPokemonFormImageUrl(imageForm);
};

const getTeamSlots = (team: MainlinePlayTeamMember[]) => {
  const memberBySlot = new Map(
    team.map((member, index) => [member.slot ?? index + 1, member]),
  );

  return Array.from({ length: 6 }, (_, index) => {
    const slotNumber = index + 1;

    return {
      member: memberBySlot.get(slotNumber) ?? null,
      slotNumber,
    };
  });
};

const MainlinePlayTeamTypeBadge = ({
  type,
}: MainlinePlayTeamTypeBadgeProps) => {
  if (!isPokemonTypeSlug(type.slug)) {
    return (
      <Badge variant="outline" className="h-6 px-1.5 text-[0.6875rem]">
        {type.name}
      </Badge>
    );
  }

  return (
    <PokemonTypeBadge
      type={type.slug}
      label={type.name}
      display="icon"
      size="sm"
      variant="soft"
    />
  );
};

const MainlinePlayTeamTypeList = ({
  primaryType,
  secondaryType,
}: MainlinePlayTeamTypeListProps) => {
  const types = [primaryType, secondaryType].filter(
    (type): type is MainlinePlayPokemonType => Boolean(type),
  );

  if (!types.length) {
    return null;
  }

  return (
    <div className="flex items-center justify-center gap-1">
      {types.map((type) => (
        <MainlinePlayTeamTypeBadge key={type.id} type={type} />
      ))}
    </div>
  );
};

const MainlinePlayTeamModeAction = () => {
  return (
    <ButtonGroup>
      <button
        type="button"
        aria-pressed="true"
        className={buttonVariants({ variant: "secondary", size: "xs" })}
      >
        Active
      </button>
      <button
        type="button"
        disabled
        className={buttonVariants({ variant: "outline", size: "xs" })}
      >
        Reserve
      </button>
    </ButtonGroup>
  );
};

const MainlinePlayTeamSlot = ({
  gameSlug,
  member,
  slotNumber,
}: MainlinePlayTeamSlotProps) => {
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
          <MainlinePlayTeamTypeList
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

export const MainlinePlayTeamPanel = ({
  gameSlug,
  playId,
  team,
}: MainlinePlayTeamPanelProps) => {
  const teamSlots = getTeamSlots(team);
  const teamHref = playId
    ? appRoutes.mainlinePlayTeam(playId)
    : appRoutes.mainlinePlays;

  return (
    <DetailSectionCard
      title="Current Team"
      action={<MainlinePlayTeamModeAction />}
      contentClassName="grid gap-3"
    >
      <div className="grid w-full grid-cols-3 gap-2 md:grid-cols-6 xl:grid-cols-3">
        {teamSlots.map((slot) => (
          <MainlinePlayTeamSlot
            key={slot.slotNumber}
            gameSlug={gameSlug}
            member={slot.member}
            slotNumber={slot.slotNumber}
          />
        ))}
      </div>

      <Link
        href={teamHref}
        className={buttonVariants({
          variant: "outline",
          size: "sm",
          className: "w-full",
        })}
      >
        View full team
        <AppIcon icon={appIcons.actions.continue} inline="end" aria-hidden />
      </Link>
    </DetailSectionCard>
  );
};
