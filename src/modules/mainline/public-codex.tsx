import Link from "next/link";
import { cache } from "react";

import { appRoutes } from "@/config/routes";
import { PlayPickerMenu } from "@/modules/mainline/features/plays/browse/components/play-picker-menu";
import { filterPlaysWithSpecies } from "@/modules/mainline/features/plays/browse/data/codex-plays-model";
import {
  readCodexPlayIdsWithSpecies,
  readCodexPlays,
  readCodexSpeciesRoster,
  readPlayedGameCounts,
  type CodexPlay,
} from "@/modules/mainline/features/plays/browse/server/codex-plays-reader";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { TrainerPlayRow } from "@/modules/mainline/shared/components/trainer-play-row";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

/*
 * Mainline's public entry for the Codex's signed-in pieces (v3 B20, B21):
 * the Codex routes inject them, since Codex can't import Mainline. Each one
 * reads the signed-in trainer's Plays and renders nothing for a visitor or
 * when that read fails: these are extras, never a reason to fail the page.
 */

export { readPlayedGameCounts };

const getAddItems = (
  plays: CodexPlay[],
  speciesSlug: string,
  formSlug?: string,
) =>
  plays.map((play) => ({
    detail: play.statusName,
    href: appRoutes.mainlinePlayTeamAdd(play.id, speciesSlug, formSlug),
    id: play.id,
    label: play.label,
  }));

/*
 * The Plays this species can join (their Pokédex lists it), read once per
 * request for the In your Plays card.
 */
const readAddablePlays = cache(
  async (speciesSlug: string): Promise<CodexPlay[] | null> => {
    const library = await readCodexPlays();

    if (!library) {
      return null;
    }

    return filterPlaysWithSpecies(
      library.plays,
      await readCodexPlayIdsWithSpecies(
        library.supabase,
        library.plays.map((play) => play.id),
        speciesSlug,
      ),
    );
  },
);

/*
 * Every one of this species on your Plays' rosters, read once per request
 * for the hero's button and the In your Plays card. Null when a read fails.
 */
const readSpeciesMembers = cache(async (speciesSlug: string) => {
  const library = await readCodexPlays();

  if (!library) {
    return null;
  }

  const members = await readCodexSpeciesRoster(
    library.supabase,
    library.plays.map((play) => play.id),
    speciesSlug,
  );

  return members ? { library, members } : null;
});

type CodexYourPlaysLinkProps = {
  speciesSlug: string;
};

/*
 * The entry hero's main button: "Your Plays (N)", N the Plays this species
 * is on, or "Add to a Play" with none. Either way it jumps to the In your
 * Plays section at the page's end, which shows where it already is before
 * offering to add it, so nobody adds it twice by accident.
 */
export const CodexYourPlaysLink = async ({
  speciesSlug,
}: CodexYourPlaysLinkProps) => {
  const read = await readSpeciesMembers(speciesSlug);

  if (!read) {
    return null;
  }

  const playCount = new Set(read.members.map((member) => member.play_id)).size;

  return (
    <a href="#in-your-plays" className={buttonVariants({ size: "lg" })}>
      <AppIcon icon={appIcons.product.play} inline="start" />
      {playCount ? `Your Plays (${playCount})` : "Add to a Play"}
    </a>
  );
};

type CodexInYourPlaysProps = {
  speciesSlug: string;
};

/*
 * "In your Plays" on a Pokémon's entry: every one of this species on your
 * Plays' rosters, each opening on its Play's roster, and Add to a Play (or
 * Start a Play) always in line with the title.
 */
export const CodexInYourPlays = async ({
  speciesSlug,
}: CodexInYourPlaysProps) => {
  const [read, addablePlays] = await Promise.all([
    readSpeciesMembers(speciesSlug),
    readAddablePlays(speciesSlug),
  ]);

  /* A read failed: hide the card rather than claim "none yet". */
  if (!read) {
    return null;
  }

  const { library, members } = read;
  const playById = new Map(library.plays.map((play) => [play.id, play]));

  const addAction = addablePlays?.length ? (
    <PlayPickerMenu
      heading="Add to"
      triggerLabel="Add to a Play"
      items={getAddItems(addablePlays, speciesSlug)}
      newPlay={{ href: appRoutes.mainlineNewPlay(), label: "Start a new Play" }}
    />
  ) : (
    <Link
      href={appRoutes.mainlineNewPlay()}
      className={buttonVariants({ size: "sm", variant: "outline" })}
    >
      Start a Play
    </Link>
  );

  return (
    <DetailSectionCard
      title="In your Plays"
      aside={
        members.length
          ? `${members.length} on your rosters`
          : "Not in any Play yet"
      }
      action={addAction}
    >
      {members.length ? (
        <ul className="grid">
          {members.map((member) => {
            const play = member.play_id ? playById.get(member.play_id) : null;

            if (!play || !member.play_pokemon_id) return null;

            const name = getPlayTeamMemberName(member);

            return (
              <TrainerPlayRow
                key={member.play_pokemon_id}
                detail={[
                  name,
                  member.level ? `Lv. ${member.level}` : null,
                  member.roster_state_slug === "active"
                    ? "On the team"
                    : member.roster_state_slug === "reserve"
                      ? "In reserve"
                      : member.roster_state_name,
                ]
                  .filter(Boolean)
                  .join(" · ")}
                href={appRoutes.mainlinePlayTeamPokemon(
                  play.id,
                  member.play_pokemon_id,
                )}
                label={`Open ${member.is_shiny ? "shiny " : ""}${name} in ${play.name}`}
                play={play}
                shiny={Boolean(member.is_shiny)}
              />
            );
          })}
        </ul>
      ) : (
        <p className="text-ink-2 text-15 font-semibold">
          It hasn&apos;t joined one of your teams yet.
        </p>
      )}
    </DetailSectionCard>
  );
};

type CodexGamePlaysProps = {
  /* The game picked in the page's version switch, as "Sword". */
  gameShortName: string;
  gameSlug: string;
  versionGroupSlug: string;
};

/*
 * A game page's Mainline actions: "Start a {Version} Play" (New Play with
 * the game picked) and "Your Plays (N)", a menu of your Plays of this
 * version group.
 */
export const CodexGamePlays = async ({
  gameShortName,
  gameSlug,
  versionGroupSlug,
}: CodexGamePlaysProps) => {
  const library = await readCodexPlays();

  if (!library) {
    return null;
  }

  const plays = library.plays.filter(
    (play) => play.versionGroupSlug === versionGroupSlug,
  );

  return (
    <>
      <Link
        href={appRoutes.mainlineNewPlay(gameSlug)}
        className={cn(buttonVariants({ size: "lg" }), "w-full sm:w-auto")}
      >
        <AppIcon icon={appIcons.actions.create} inline="start" />
        Start a {gameShortName} Play
      </Link>
      {plays.length ? (
        <PlayPickerMenu
          heading="Your Plays"
          triggerLabel={`Your Plays (${plays.length})`}
          triggerSize="lg"
          items={plays.map((play) => ({
            detail: play.statusName,
            href: appRoutes.mainlinePlay(play.id),
            id: play.id,
            label: play.label,
          }))}
        />
      ) : null}
    </>
  );
};
