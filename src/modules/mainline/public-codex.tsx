import Link from "next/link";
import { cache, type ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { PlayPickerMenu } from "@/modules/mainline/features/plays/browse/components/play-picker-menu";
import { NewPlayDialogProvider } from "@/modules/mainline/features/plays/new/components/new-play-dialog";
import { getNewPlayDialogData } from "@/modules/mainline/features/plays/new/server/new-play-dialog-query";
import { NewPlayTrigger } from "@/modules/mainline/features/plays/shared/components/new-play-trigger";
import { filterPlaysWithSpecies } from "@/modules/mainline/features/plays/browse/data/codex-plays-model";
import {
  readCodexPlayIdsWithSpecies,
  readCodexPlays,
  readCodexSpeciesRoster,
  type CodexPlay,
} from "@/modules/mainline/features/plays/browse/server/codex-plays-reader";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { TrainerPlayRow } from "@/modules/mainline/shared/components/trainer-play-row";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { IconTip } from "@/shared/components/icon-tip";
import { buttonVariants } from "@/shared/components/ui/button";

/*
 * Mainline's public entry for the Codex's signed-in pieces (v3 B20, B21):
 * the Codex routes inject them, since Codex can't import Mainline. Each one
 * reads the signed-in trainer's Plays and renders nothing for a visitor or
 * when that read fails: these are extras, never a reason to fail the page.
 */

/*
 * New Play, hosted on a Codex page as the Mainline layout hosts it: Start a
 * Play opens the dialog over the page, and only starting the Play moves on,
 * to the new Play.
 */
const CodexNewPlayHost = async ({ children }: { children: ReactNode }) => (
  <NewPlayDialogProvider data={await getNewPlayDialogData()}>
    {children}
  </NewPlayDialogProvider>
);

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
 * A Codex head's Your Plays icon: it jumps to the page's own Plays section at
 * the end (`#in-your-plays` on an entry, `#your-plays` on a game), which
 * shows what's there before offering to add or start, so nobody adds a
 * Pokémon twice by accident. Its tip names the count.
 */
const CodexPlaysJumpIcon = ({
  href,
  label,
}: {
  href: string;
  label: string;
}) => (
  <IconTip
    label={label}
    trigger={
      <a
        href={href}
        aria-label={label}
        className={buttonVariants({ size: "icon" })}
      >
        <AppIcon icon={appIcons.product.play} />
      </a>
    }
  />
);

/*
 * The entry head's Your Plays icon: "Your Plays (N)", N the Plays this
 * species is on, or "Add to a Play" with none.
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
    <CodexPlaysJumpIcon
      href="#in-your-plays"
      label={playCount ? `Your Plays (${playCount})` : "Add to a Play"}
    />
  );
};

/*
 * The game head's Your Plays icon: "Your Plays (N)", N your Plays of these
 * games, or "Start a Play" with none.
 */
export const CodexGameYourPlaysLink = async ({
  versionGroupSlug,
}: {
  versionGroupSlug: string;
}) => {
  const library = await readCodexPlays();

  if (!library) {
    return null;
  }

  const playCount = library.plays.filter(
    (play) => play.versionGroupSlug === versionGroupSlug,
  ).length;

  return (
    <CodexPlaysJumpIcon
      href="#your-plays"
      label={playCount ? `Your Plays (${playCount})` : "Start a Play"}
    />
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
      newPlay={{ label: "Start a new Play" }}
    />
  ) : (
    <NewPlayTrigger
      className={buttonVariants({ size: "sm", variant: "outline" })}
    >
      Start a Play
    </NewPlayTrigger>
  );

  return (
    <CodexNewPlayHost>
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
    </CodexNewPlayHost>
  );
};

type CodexGameYourPlaysProps = {
  /* The game picked in the page's version switch, as "Sword". */
  gameShortName: string;
  gameSlug: string;
  versionGroupSlug: string;
};

/*
 * "Your Plays" on a game's page, its last section: your Plays of these games
 * (either version), each opening on its Play, with "Start a {Version} Play"
 * (New Play with the picked game) and Plan a team in line with the title.
 */
export const CodexGameYourPlays = async ({
  gameShortName,
  gameSlug,
  versionGroupSlug,
}: CodexGameYourPlaysProps) => {
  const library = await readCodexPlays();

  /* A read failed: hide the card rather than claim "none yet". */
  if (!library) {
    return null;
  }

  const plays = library.plays.filter(
    (play) => play.versionGroupSlug === versionGroupSlug,
  );

  return (
    <CodexNewPlayHost>
      <DetailSectionCard
        title="Your Plays"
        aside={
          plays.length
            ? `${plays.length} of these games`
            : "None of these games yet"
        }
        action={
          <div className="flex flex-wrap gap-2">
            <NewPlayTrigger
              gameSlug={gameSlug}
              className={buttonVariants({ size: "sm" })}
            >
              <AppIcon icon={appIcons.actions.create} inline="start" />
              Start a {gameShortName} Play
            </NewPlayTrigger>
            <Link
              href={appRoutes.mainlinePlanNew(versionGroupSlug)}
              className={buttonVariants({ size: "sm", variant: "outline" })}
            >
              <AppIcon icon={appIcons.product.team} inline="start" />
              Plan a team
            </Link>
          </div>
        }
      >
        {plays.length ? (
          <ul className="grid">
            {plays.map((play) => (
              <TrainerPlayRow
                key={play.id}
                detail={getGameShortName(play.gameName)}
                href={appRoutes.mainlinePlay(play.id)}
                label={`Open ${play.label}`}
                play={play}
                shiny={false}
              />
            ))}
          </ul>
        ) : (
          <p className="text-ink-2 text-15 font-semibold">
            You haven&apos;t started a Play of these games yet.
          </p>
        )}
      </DetailSectionCard>
    </CodexNewPlayHost>
  );
};
