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
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { buttonVariants } from "@/shared/components/ui/button";

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
      <Link href={appRoutes.mainlinePlayNew()} className={buttonVariants()}>
        <AppIcon icon={appIcons.actions.create} inline="start" />
        Start a Play
      </Link>
    );
  }

  return (
    <PlayPickerMenu
      heading="Add to"
      triggerLabel="Add to a Play"
      triggerVariant="default"
      items={getAddItems(plays, speciesSlug, formSlug)}
      newPlay={{ href: appRoutes.mainlinePlayNew(), label: "Start a new Play" }}
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
      newPlay={{ href: appRoutes.mainlinePlayNew(), label: "Start a new Play" }}
    />
  ) : (
    <Link
      href={appRoutes.mainlinePlayNew()}
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
        <ul className="divide-line grid divide-y">
          {members.map((member) => {
            const play = member.play_id ? playById.get(member.play_id) : null;

            if (!play || !member.play_pokemon_id) return null;

            const imageUrl = getPlayTeamMemberImageUrl(member);

            return (
              <li
                key={member.play_pokemon_id}
                className="game-scope"
                style={getGameColourStyle(play.gameSlug)}
              >
                <Link
                  href={appRoutes.mainlinePlayTeamPokemon(
                    play.id,
                    member.play_pokemon_id,
                  )}
                  className="hover:bg-hover focus-visible:outline-focus -mx-2 grid min-h-14 grid-cols-[44px_minmax(0,1fr)] items-center gap-3 rounded-md px-2 py-2 outline-none focus-visible:outline-3 focus-visible:outline-solid"
                >
                  {imageUrl ? (
                    // eslint-disable-next-line @next/next/no-img-element
                    <img
                      src={imageUrl}
                      alt=""
                      className="size-11 object-contain"
                    />
                  ) : (
                    <span className="empty-slot size-10 rounded-full" />
                  )}
                  <span className="min-w-0">
                    <span className="text-ink text-15 block truncate font-extrabold">
                      {getPlayTeamMemberName(member)}
                    </span>
                    <span className="text-ink-2 text-13 block truncate font-semibold">
                      {[
                        play.label,
                        member.roster_state_slug === "active"
                          ? "On the team"
                          : member.roster_state_slug === "reserve"
                            ? "In reserve"
                            : member.roster_state_name,
                        member.level ? `Lv. ${member.level}` : null,
                      ]
                        .filter(Boolean)
                        .join(" · ")}
                    </span>
                  </span>
                </Link>
              </li>
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
    <div className="flex flex-wrap gap-2">
      <Link
        href={appRoutes.mainlinePlayNew(gameSlug)}
        className={buttonVariants()}
      >
        <AppIcon icon={appIcons.actions.create} inline="start" />
        Start a {gameShortName} Play
      </Link>
      {plays.length ? (
        <PlayPickerMenu
          heading="Your Plays"
          triggerLabel={`Your Plays (${plays.length})`}
          items={plays.map((play) => ({
            detail: play.statusName,
            href: appRoutes.mainlinePlay(play.id),
            id: play.id,
            label: play.label,
          }))}
        />
      ) : null}
    </div>
  );
};
