import type {
  PublicMoment,
  PublicPlayArt,
  PublicSamplePlay,
} from "@/config/public-art";
import { MainlinePlayTopSection } from "@/modules/mainline/features/plays/hub/shell/top-section/mainline-play-top-section";
import type { MainlinePlayShellData } from "@/modules/mainline/features/plays/hub/types";
import { BadgeStamp } from "@/modules/mainline/features/plays/shared/components/badge-stamp";
import {
  Medallion,
  type MedallionContent,
} from "@/modules/mainline/features/plays/shared/components/medallion";
import { RecordRow } from "@/modules/mainline/features/plays/shared/components/record-row";
import { getGameCoverImageUrlBySlug } from "@/modules/reference/features/games/data/game-images";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { appIcons } from "@/shared/components/app-icon";
import { getNavigationMenuControlClassName } from "@/shared/components/navigation-menu/navigation-menu-control";
import { cn } from "@/shared/utils/cn";

/*
 * Mainline's public entry for the Play pieces the public pages draw: the
 * moments, badges and Play header are the Play's own components, mapped from
 * the example Play onto what each one reads. The site routes pass it in
 * (global features can't import a module); the contract is `PublicPlayArt`
 * in `@/config/public-art`.
 */

const toMedallionContent = (moment: PublicMoment): MedallionContent => {
  switch (moment.kind) {
    case "badge":
      return { kind: "badge", type: moment.type };
    case "note":
      return { icon: appIcons.actions.edit, kind: "note" };
    case "pokemon": {
      const imageUrl = getPokemonFormImageUrl(moment.pokemon);

      return imageUrl
        ? { imageUrl, kind: "pokemon", type: moment.pokemon.type }
        : { icon: appIcons.product.event, kind: "status" };
    }
  }
};

/* The Intro's partner: a larger medallion, its Pokémon standing a little proud. */
const largeMedallionClassName =
  "m-1 size-14.5 sm:size-19 [&_img]:size-16.5 [&_img]:-translate-y-1 sm:[&_img]:size-22";

/* The example Play as the Play header reads a Play's summary. */
const toShellData = (play: PublicSamplePlay): MainlinePlayShellData => ({
  collectiblesAvailable: true,
  coverImageUrl: getGameCoverImageUrlBySlug(play.game.slug),
  game: null,
  play: {
    active_team_count: null,
    archived_at: null,
    collected_entry_count: null,
    completed_milestone_count: null,
    completed_on: null,
    created_at: null,
    game_id: null,
    game_name: play.game.name,
    game_slug: play.game.slug,
    generation_id: null,
    generation_name: play.game.generation,
    generation_slug: null,
    historical_pokemon_count: null,
    play_id: null,
    play_name: play.name,
    playtime_minutes: play.playtimeMinutes,
    pokedex_caught_count: null,
    pokedex_seen_count: null,
    reserve_team_count: null,
    started_on: play.startedOn,
    status_id: null,
    status_name: play.status,
    status_slug: play.status.toLowerCase(),
    timeline_event_count: null,
    trainer_name: play.trainer,
    updated_at: null,
    user_id: null,
    version_group_id: null,
    version_group_name: null,
    version_group_slug: null,
  },
  region: {
    created_at: "",
    id: 0,
    name: play.game.region,
    slug: play.game.region.toLowerCase(),
    sort_order: 0,
  },
  rules: [],
  tags: [],
});

/* The Play's tabs, drawn still: the first one is where the Play opens. */
const SamplePlayTabs = ({ tabs }: { tabs: readonly string[] }) => (
  <span className="flex w-max gap-1.5">
    {tabs.map((tab, index) => (
      <span
        key={tab}
        className={getNavigationMenuControlClassName({
          active: index === 0,
          className: "inline-flex items-center px-4",
        })}
      >
        {tab}
      </span>
    ))}
  </span>
);

export const publicPlayArt = {
  badgeStamp: ({ tilt, type }) => (
    <BadgeStamp label="" state={{ kind: "badge", type }} tilt={tilt} />
  ),
  medallion: ({ className, moment, size = "md" }) => (
    <Medallion
      content={toMedallionContent(moment)}
      className={cn(size === "lg" && largeMedallionClassName, className)}
    />
  ),
  playHeader: (play) => (
    <MainlinePlayTopSection
      data={toShellData(play)}
      navigation={<SamplePlayTabs tabs={play.tabs} />}
    />
  ),
  recordRow: ({ description, headline, kicker, moment }) => (
    <RecordRow
      description={description}
      headline={headline}
      kicker={kicker}
      medallion={toMedallionContent(moment)}
      wrap
    />
  ),
} satisfies PublicPlayArt;
