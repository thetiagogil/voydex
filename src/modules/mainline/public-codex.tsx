"use client";

import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { FavouritePokemonButton } from "@/modules/mainline/features/collection/components/favourite-pokemon-button";
import { readIsFavouritePokemon } from "@/modules/mainline/features/collection/client/favourite-pokemon-reader";
import { CodexAddToPlay } from "@/modules/mainline/features/plays/hub/components/codex-add-to-play";
import { CodexPlanTeam } from "@/modules/mainline/features/plans/planner/sections/codex-plan-team";
import { NewPlayDialogProvider } from "@/modules/mainline/features/plays/new/components/new-play-dialog";
import { NewPlayTrigger } from "@/modules/mainline/features/plays/shared/components/new-play-trigger";
import { filterPlaysWithSpecies } from "@/modules/mainline/features/plays/browse/data/codex-plays-model";
import {
  readCodexPlays,
  type CodexPlay,
} from "@/modules/mainline/features/plays/browse/client/codex-plays-query";
import {
  readCodexPlayIdsWithSpecies,
  readCodexSpeciesRoster,
} from "@/modules/mainline/features/plays/browse/client/codex-plays-reader";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { TrainerPlayRow } from "@/modules/mainline/shared/components/trainer-play-row";
import { getGameShortName } from "@/modules/reference/features/games/utils/game-display";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { IconTip } from "@/shared/components/icon-tip";
import { buttonVariants } from "@/shared/components/ui/button";
import { localUserId } from "@/platform/local-db/device-schema";
import {
  QuietLocalDbBoundary,
  useLocalRead,
  type LocalQueryClient,
} from "@/platform/local-db/local-db-context";

/*
 * Mainline's public entry for the Codex's pieces about your Plays (v3 B20,
 * B21): the Codex routes inject them, since Codex can't import Mainline.
 * Each reads your Plays on this device and renders nothing until it can,
 * or when the read fails: these are extras, never a reason to fail a page.
 */

/*
 * A piece's read, once the device database is open. Null while it runs or
 * when it fails, so the piece hides rather than claim "none yet".
 */
const usePieceRead = <Data,>(
  key: string,
  read: (client: LocalQueryClient) => Promise<Data | null>,
) => {
  const result = useLocalRead(key, read);

  return result.status === "ready" ? result.data : null;
};

/* Each piece waits for the device database on its own, quietly. */
const onDevice = <Props extends object>(Piece: (props: Props) => ReactNode) => {
  const OnDevice = (props: Props) => (
    <QuietLocalDbBoundary>
      <Piece {...props} />
    </QuietLocalDbBoundary>
  );

  return OnDevice;
};

/*
 * New Play, hosted on a Codex page as the Mainline layout hosts it: Start a
 * Play opens the dialog over the page, and only starting the Play moves on,
 * to the new Play. The card waits for the device database, which New Play
 * reads and saves through.
 */
const CodexNewPlayHost = ({ children }: { children: ReactNode }) => (
  <NewPlayDialogProvider>{children}</NewPlayDialogProvider>
);

const getAddItems = (plays: CodexPlay[]) =>
  plays.map((play) => ({
    detail: play.statusName,
    id: play.id,
    label: play.label,
  }));

/*
 * The Plays this species can join (their Pokédex lists it), read once per
 * the In your Plays card.
 */
const readAddablePlays = async (
  speciesSlug: string,
): Promise<CodexPlay[] | null> => {
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
};

/*
 * Every one of this species on your Plays' rosters, for the hero's button
 * and the In your Plays card. Null when a read fails.
 */
const readSpeciesMembers = async (speciesSlug: string) => {
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
};

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
        className={buttonVariants({ size: "icon", variant: "secondary" })}
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
export const CodexYourPlaysLink = onDevice(
  ({ speciesSlug }: CodexYourPlaysLinkProps) => {
    const read = usePieceRead(`codex-species:${speciesSlug}`, () =>
      readSpeciesMembers(speciesSlug),
    );

    if (!read) {
      return null;
    }

    const playCount = new Set(read.members.map((member) => member.play_id))
      .size;

    return (
      <CodexPlaysJumpIcon
        href="#in-your-plays"
        label={playCount ? `Your Plays (${playCount})` : "Add to a Play"}
      />
    );
  },
);

/*
 * The game head's Your Plays icon: "Your Plays (N)", N your Plays of these
 * games, or "Start a Play" with none.
 */
export const CodexGameYourPlaysLink = onDevice(
  ({ versionGroupSlug }: { versionGroupSlug: string }) => {
    const library = usePieceRead("codex-plays", () => readCodexPlays());

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
  },
);

type CodexFavouriteButtonProps = {
  /* The shown form; null when the entry has none to save. */
  formId: number | null;
  name: string;
  speciesId: number;
};

/* Whether the shown form is a favourite; null when the read fails. */
const readCodexFavourite = async (client: LocalQueryClient, formId: number) => {
  try {
    return await readIsFavouritePokemon(client, localUserId, formId);
  } catch {
    return null;
  }
};

/*
 * The entry hero's heart for the signed-in trainer, on if the shown form is
 * a favourite. Hidden when the read fails, as the other extras.
 */
export const CodexFavouriteButton = onDevice(
  ({ formId, name, speciesId }: CodexFavouriteButtonProps) => {
    const favourite = usePieceRead(`codex-favourite:${formId}`, (client) =>
      formId === null
        ? Promise.resolve(null)
        : readCodexFavourite(client, formId),
    );

    if (formId === null || favourite === null) {
      return null;
    }

    return (
      <FavouritePokemonButton
        formId={formId}
        initialFavourite={favourite}
        name={name}
        speciesId={speciesId}
      />
    );
  },
);

type CodexInYourPlaysProps = {
  /* The shown form; left out for the default form. */
  formSlug?: string | null;
  speciesSlug: string;
};

/*
 * "In your Plays" on a Pokémon's entry: every one of this species on your
 * Plays' rosters, each opening on its Play's roster, and Add to a Play (Add
 * Pokémon over the entry) or Start a Play always in line with the title.
 */
export const CodexInYourPlays = onDevice(
  ({ formSlug = null, speciesSlug }: CodexInYourPlaysProps) => {
    const read = usePieceRead(
      `codex-in-your-plays:${speciesSlug}`,
      async () => {
        const [species, addablePlays] = await Promise.all([
          readSpeciesMembers(speciesSlug),
          readAddablePlays(speciesSlug),
        ]);

        return species ? { ...species, addablePlays } : null;
      },
    );

    /* A read failed: hide the card rather than claim "none yet". */
    if (!read) {
      return null;
    }

    const { addablePlays, library, members } = read;
    const playById = new Map(library.plays.map((play) => [play.id, play]));

    const addAction = addablePlays?.length ? (
      <CodexAddToPlay
        formSlug={formSlug}
        plays={getAddItems(addablePlays)}
        speciesSlug={speciesSlug}
      />
    ) : (
      <NewPlayTrigger
        className={buttonVariants({ size: "sm", variant: "secondary" })}
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
                const play = member.play_id
                  ? playById.get(member.play_id)
                  : null;

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
  },
);

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
export const CodexGameYourPlays = onDevice(
  ({ gameShortName, gameSlug, versionGroupSlug }: CodexGameYourPlaysProps) => {
    const library = usePieceRead("codex-plays", () => readCodexPlays());

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
              <CodexPlanTeam versionGroupSlug={versionGroupSlug} />
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
  },
);
