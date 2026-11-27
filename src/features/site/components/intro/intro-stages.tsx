import { Fragment, type ReactNode } from "react";

import type { PublicArt, PublicPlayArt } from "@/config/public-art";
import { PokemonRender } from "@/features/site/components/pokemon-render";
import {
  introCodexEntries,
  introGamePicks,
  introPlan,
} from "@/features/site/data/intro-showcase";
import {
  samplePlay,
  samplePlayBadges,
  samplePlayHistory,
  samplePlayTeam,
} from "@/features/site/data/sample-play";
import { PickedMark } from "@/shared/components/picked-mark";
import { StatusBadge } from "@/shared/components/status-badge";
import { cn } from "@/shared/utils/cn";

/* The badges' resting tilts, as the stamp card draws them. */
const stampTilts = [-6, 4, -3, 7, -5, 3, -7, 5];

/*
 * A small picture of a screen, drawn with the app's own pieces on the inset
 * fill. It is a picture, so it is one image to a screen reader, described
 * by its label, and inert: nothing inside it can be focused or pressed.
 */
const IntroStage = ({
  children,
  className,
  label,
}: {
  children: ReactNode;
  className?: string;
  label: string;
}) => (
  <div
    role="img"
    aria-label={label}
    inert
    className={cn("tile flex flex-col gap-3", className)}
  >
    {children}
  </div>
);

const StageLabel = ({ children }: { children: ReactNode }) => (
  <span className="text-ink-2 copy-label">{children}</span>
);

/* Day one: the game picked on the cover shelf, and the Play it starts. */
export const StartAPlayStage = ({ art }: { art: PublicArt }) => (
  <IntroStage
    label={`Pick a game: ${introGamePicks.map((game) => game.name).join(", ")}, with ${samplePlay.game.name} picked. Your Play: ${samplePlay.name}.`}
  >
    <div className="flex items-end gap-2 overflow-hidden pt-2 pb-1">
      {introGamePicks.map((game) => {
        const isPicked = game.slug === samplePlay.game.slug;

        return (
          <span key={game.slug} className="relative shrink-0">
            {art.gameCover({ className: isPicked ? "h-16" : "h-14", game })}
            {isPicked ? <PickedMark size="sm" /> : null}
          </span>
        );
      })}
    </div>
    <div className="bg-band flex flex-wrap items-center gap-x-2 gap-y-1.5 rounded-sm px-3 py-2.5">
      <span className="font-display text-17 font-semibold">
        {samplePlay.name}
      </span>
      <StatusBadge tone="calm" ground="band">
        {samplePlay.status}
      </StatusBadge>
    </div>
  </IntroStage>
);

/* Along the way: the team as a Play's card shows it and the gym badges as stamps. */
export const RecordAsYouGoStage = ({
  art,
  playArt,
}: {
  art: PublicArt;
  playArt: PublicPlayArt;
}) => (
  <IntroStage
    label={`Team: ${samplePlayTeam.map((pokemon) => pokemon.name).join(", ")}. Gym badges: all eight stamped.`}
  >
    <StageLabel>Team</StageLabel>
    <div className="grid grid-cols-6 gap-1.5">
      {samplePlayTeam.map((pokemon) => (
        <Fragment key={pokemon.slug}>{art.pokemonAvatar({ pokemon })}</Fragment>
      ))}
    </div>
    <StageLabel>Gym badges</StageLabel>
    <div className="grid grid-cols-8 gap-1">
      {samplePlayBadges.map((badge, index) => (
        <Fragment key={badge.name}>
          {playArt.badgeStamp({
            spriteSlug: badge.spriteSlug,
            tilt: stampTilts[index] ?? 0,
            type: badge.type,
          })}
        </Fragment>
      ))}
    </div>
  </IntroStage>
);

/* Months later: two moments, as the Play's History lists them. */
export const LookBackStage = ({ playArt }: { playArt: PublicPlayArt }) => (
  <IntroStage
    label={`Two moments from the Play's history: ${samplePlayHistory.map((record) => record.kicker).join("; ")}.`}
    className="gap-2"
  >
    {samplePlayHistory.map((record) => (
      /* A picture of a History row: white with its line, on the stage's tile. */
      <div
        key={record.kicker}
        className="bg-surface shadow-card rounded-lg px-3.5"
      >
        {playArt.recordRow({
          description: record.description,
          headline: record.headline.map((part) =>
            typeof part === "string" ? (
              part
            ) : (
              <b key={part.bold}>{part.bold}</b>
            ),
          ),
          kicker: record.kicker,
          moment: record.moment,
        })}
      </div>
    ))}
  </IntroStage>
);

const tileClassName = "size-13 sm:size-14";

/* A Plan in the making, as My Plans shows one: its picks, then the slots still open. */
export const PlanATeamStage = ({ art }: { art: PublicArt }) => (
  <div
    role="img"
    aria-label={`A Plan called ${introPlan.name}: ${introPlan.picks.map((pokemon) => pokemon.name).join(", ")}, with ${introPlan.slots - introPlan.picks.length} slots still open.`}
    inert
    className="flex gap-1.5"
  >
    {introPlan.picks.map((pokemon) => (
      <Fragment key={pokemon.slug}>
        {art.pokemonAvatar({ className: tileClassName, pokemon })}
      </Fragment>
    ))}
    {Array.from(
      { length: introPlan.slots - introPlan.picks.length },
      (_, index) => (
        <Fragment key={index}>
          {art.pokemonAvatarSlot({ className: tileClassName })}
        </Fragment>
      ),
    )}
  </div>
);

/* A few Codex entries, on the white card its list draws them on. */
export const CodexStage = ({ art }: { art: PublicArt }) => (
  <div
    role="img"
    aria-label={`Codex entries for ${introCodexEntries.map((entry) => entry.name).join(", ")}.`}
    inert
    className="flex gap-1.5"
  >
    {introCodexEntries.map((entry) => (
      <span
        key={entry.slug}
        className={cn(
          "plain-card grid place-items-center rounded-sm",
          tileClassName,
        )}
      >
        <PokemonRender
          art={art}
          pokemon={entry}
          fallback="letter"
          className="size-[88%]"
        />
      </span>
    ))}
  </div>
);
