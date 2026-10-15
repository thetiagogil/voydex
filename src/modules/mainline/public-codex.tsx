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

type CodexAddToPlayProps = {
  formSlug?: string;
  speciesSlug: string;
};

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
 * request for the hero and the In your Plays card.
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
 * "Add to a Play", the entry hero's main button: a menu of your Plays whose
 * game has this species, each opening its Roster's Add Pokémon sheet on it
 * (and its form); with none, Start a Play.
 */
export const CodexAddToPlay = async ({
  formSlug,
  speciesSlug,
}: CodexAddToPlayProps) => {
  const plays = await readAddablePlays(speciesSlug);

  if (!plays) {
    return null;
  }

  if (!plays.length) {
    return (
      <Link
        href={appRoutes.mainlineNewPlay()}
        className={buttonVariants({ size: "lg" })}
      >
        <AppIcon icon={appIcons.actions.create} inline="start" />
        Start a Play
      </Link>
    );
  }

  return (
    <PlayPickerMenu
      heading="Add to"
      triggerLabel="Add to a Play"
      triggerSize="lg"
      triggerVariant="default"
      items={getAddItems(plays, speciesSlug, formSlug)}
      newPlay={{ href: appRoutes.mainlineNewPlay(), label: "Start a new Play" }}
    />
  );
};

type CodexInYourPlaysProps = {
  speciesSlug: string;
};

/*
 * "In your Plays" on a Pokémon's entry: every one of this species on your
 * Plays' rosters, each opening on its Play's roster; none yet offers Add to
 * a Play.
 */
export const CodexInYourPlays = async ({
  speciesSlug,
}: CodexInYourPlaysProps) => {
  const library = await readCodexPlays();

  if (!library) {
    return null;
  }

  const playById = new Map(library.plays.map((play) => [play.id, play]));
  const [members, addablePlays] = await Promise.all([
    readCodexSpeciesRoster(
      library.supabase,
      library.plays.map((play) => play.id),
      speciesSlug,
    ),
    readAddablePlays(speciesSlug),
  ]);

  /* The roster read failed: hide the card rather than claim "none yet". */
  if (!members) {
    return null;
  }

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
      action={members.length ? addAction : undefined}
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
        <div className="flex flex-wrap items-center justify-between gap-3">
          <p className="text-ink-2 text-15 font-semibold">
            It hasn&apos;t joined one of your teams yet.
          </p>
          {addAction}
        </div>
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
