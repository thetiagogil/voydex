import type { ReactNode } from "react";

import { BadgeStampStill } from "@/features/site/components/stills/badge-stamp-still";
import { GameCover } from "@/features/site/components/stills/game-cover";
import { MomentMedallion } from "@/features/site/components/stills/moment-medallion";
import { PlayHeaderStill } from "@/features/site/components/stills/play-header-still";
import { PokemonCardStill } from "@/features/site/components/stills/pokemon-card-still";
import { PokemonRender } from "@/features/site/components/stills/pokemon-render";
import { TeamSticker } from "@/features/site/components/stills/team-sticker";
import {
  introCodexEntries,
  introGamePicks,
  introPlan,
} from "@/features/site/data/intro-showcase";
import {
  samplePlay,
  samplePlayBadges,
  samplePlayHistory,
  samplePlayPokedex,
  samplePlayTeam,
} from "@/features/site/data/sample-play";
import type { SiteArt } from "@/features/site/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

/* The badges' resting tilts, as the stamp card draws them. */
const stampTilts = [-6, 4, -3, 7, -5, 3, -7, 5];

/*
 * A drawing of a screen on the inset fill. It is a picture, so it is one
 * image to a screen reader, described by its label.
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
    className={cn(
      "bg-surface-2 flex flex-col gap-4.5 rounded-lg p-3.5 sm:rounded-xl sm:p-6",
      className,
    )}
  >
    {children}
  </div>
);

const StageRow = ({
  children,
  className,
  label,
}: {
  children: ReactNode;
  className?: string;
  label: string;
}) => (
  <div className={cn("flex min-w-0 flex-col gap-2.5", className)}>
    <span className="text-ink-2 text-[12.5px] font-bold">{label}</span>
    {children}
  </div>
);

export const StartAPlayStage = ({ art }: { art: SiteArt }) => (
  <IntroStage
    label={`Pick a game: ${introGamePicks.map((game) => game.name).join(", ")}, with ${samplePlay.game.name} picked. Your Play: ${samplePlay.name}, tracking its ${samplePlay.tracks.join(", ")}, in its game's colour.`}
  >
    <StageRow label="Pick a game">
      <div className="no-scrollbar -mx-3.5 -mt-2 -mb-1.5 flex items-end gap-3 overflow-x-auto px-3.5 pt-2 pb-3.5 sm:m-0 sm:overflow-visible sm:p-0">
        {introGamePicks.map((game, index) => {
          const isPicked = game.slug === samplePlay.game.slug;

          return (
            <span
              key={game.slug}
              className={cn(
                "relative shrink-0",
                index < 2 && "max-sm:hidden",
                isPicked && "-translate-y-1.5",
              )}
            >
              <GameCover art={art} game={game} className="h-24" />
              {isPicked ? (
                <span className="bg-action absolute top-1.5 right-1.5 z-2 grid size-6 place-items-center rounded-full text-white shadow-[0_0_0_2.5px_white]">
                  <AppIcon
                    icon={appIcons.product.completion}
                    className="size-3.5 stroke-3"
                  />
                </span>
              ) : null}
            </span>
          );
        })}
      </div>
    </StageRow>
    <StageRow label="Your Play">
      <PlayHeaderStill art={art} />
    </StageRow>
  </IntroStage>
);

const pokedexCaptions = {
  caught: { icon: appIcons.product.caught, label: "Caught" },
  missing: { icon: null, label: "Missing" },
  seen: { icon: appIcons.product.seen, label: "Seen" },
} as const;

export const RecordAsYouGoStage = ({ art }: { art: SiteArt }) => (
  <IntroStage
    label={`Team: ${samplePlayTeam.map((pokemon) => pokemon.name).join(", ")}. Gym badges: all eight stamped. Pokédex: ${samplePlayPokedex.map((entry) => `${entry.name} ${pokedexCaptions[entry.state].label.toLowerCase()}`).join(", ")}.`}
    className="grid gap-4.5 md:grid-cols-2 xl:grid-cols-[minmax(0,1.05fr)_minmax(0,0.75fr)_minmax(0,1.2fr)] xl:items-start xl:gap-6.5"
  >
    <StageRow label="Team">
      <div className="grid grid-cols-3 gap-2">
        {samplePlayTeam.map((pokemon) => (
          <TeamSticker key={pokemon.sprite_slug} art={art} pokemon={pokemon} />
        ))}
      </div>
    </StageRow>
    <StageRow label="Gym badges">
      <div className="grid grid-cols-[repeat(4,42px)] gap-3 p-1">
        {samplePlayBadges.map((badge, index) => (
          <BadgeStampStill
            key={badge.name}
            tilt={stampTilts[index] ?? 0}
            type={badge.type}
          />
        ))}
      </div>
    </StageRow>
    <StageRow label="Pokédex" className="md:col-span-2 xl:col-span-1">
      <div className="grid grid-cols-3 gap-2 sm:gap-3.5">
        {samplePlayPokedex.map((entry) => {
          const caption = pokedexCaptions[entry.state];

          return (
            <div
              key={entry.sprite_slug}
              className="flex min-w-0 flex-col items-center gap-2"
            >
              <PokemonCardStill
                art={art}
                className="w-full"
                number={entry.number}
                pokemon={entry}
                state={entry.state}
                types={entry.types}
              />
              <span className="text-13 text-ink-2 inline-flex items-center gap-1.5 font-semibold">
                {caption.icon ? (
                  <AppIcon icon={caption.icon} className="size-3.5" />
                ) : null}
                {caption.label}
              </span>
            </div>
          );
        })}
      </div>
    </StageRow>
  </IntroStage>
);

export const LookBackStage = ({ art }: { art: SiteArt }) => (
  <IntroStage
    label={`Three moments from the Play's history: ${samplePlayHistory.map((record) => record.kicker).join("; ")}.`}
  >
    <div className="bg-surface divide-line divide-y rounded-lg px-4 sm:px-4.5">
      {samplePlayHistory.map((record) => (
        <div
          key={record.kicker}
          className="grid grid-cols-[52px_minmax(0,1fr)] items-center gap-4 py-3.5"
        >
          <MomentMedallion art={art} moment={record.moment} />
          <div className="min-w-0">
            <p className="text-ink-3 text-[12.5px] font-bold">
              {record.kicker}
            </p>
            <p
              className={cn(
                "text-ink text-[15.5px] font-semibold",
                record.moment.kind === "note" && "leading-[1.55] italic",
              )}
            >
              {record.headline.map((part) =>
                typeof part === "string" ? (
                  part
                ) : (
                  <b key={part.bold} className="font-extrabold">
                    {part.bold}
                  </b>
                ),
              )}
            </p>
            {record.description ? (
              <p className="text-14 text-ink-2">{record.description}</p>
            ) : null}
          </div>
        </div>
      ))}
    </div>
  </IntroStage>
);

export const PlanATeamStage = ({ art }: { art: SiteArt }) => (
  <IntroStage
    label={`A Plan called ${introPlan.name}: ${introPlan.picks.map((pokemon) => pokemon.name).join(", ")}, with ${introPlan.slots - introPlan.picks.length} slots still open.`}
    className="flex-1 justify-center gap-3 sm:p-4.5"
  >
    <div className="flex items-baseline justify-between gap-3">
      <span className="font-display text-17 font-semibold">
        {introPlan.name}
      </span>
      <span className="text-13 text-ink-2 font-semibold">
        {introPlan.picks.length} of {introPlan.slots}
      </span>
    </div>
    <div className="grid grid-cols-3 gap-2.5 sm:grid-cols-6 md:grid-cols-3">
      {introPlan.picks.map((pokemon) => (
        <span
          key={pokemon.sprite_slug}
          className="border-line bg-surface grid aspect-square place-items-center rounded-md border"
        >
          <PokemonRender art={art} pokemon={pokemon} className="size-[84%]" />
        </span>
      ))}
      {Array.from(
        { length: introPlan.slots - introPlan.picks.length },
        (_, index) => (
          <span
            key={index}
            className="border-dash aspect-square rounded-md border-[2.5px] border-dashed"
          />
        ),
      )}
    </div>
  </IntroStage>
);

export const CodexStage = ({ art }: { art: SiteArt }) => (
  <IntroStage
    label={`Codex entries for ${introCodexEntries.map((entry) => entry.name).join(", ")}.`}
    className="flex-1 justify-center gap-3 sm:p-4.5"
  >
    <div className="grid grid-cols-3 gap-2">
      {introCodexEntries.map((entry) => (
        <PokemonCardStill
          key={entry.sprite_slug}
          art={art}
          number={entry.number}
          pokemon={entry}
          size="sm"
          state="plain"
          types={entry.types}
        />
      ))}
    </div>
  </IntroStage>
);
