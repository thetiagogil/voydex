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
  samplePlayPokedex,
  samplePlayTeam,
} from "@/features/site/data/sample-play";
import { getTypeColourStyle } from "@/features/site/utils/type-colour";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

/* The badges' resting tilts, as the stamp card draws them. */
const stampTilts = [-6, 4, -3, 7, -5, 3, -7, 5];

/*
 * A screen drawn with the app's own pieces on the inset fill. It is a
 * picture, so it is one image to a screen reader, described by its label,
 * and inert: nothing inside it can be focused or pressed.
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

export const StartAPlayStage = ({
  art,
  playArt,
}: {
  art: PublicArt;
  playArt: PublicPlayArt;
}) => (
  <IntroStage
    label={`Pick a game: ${introGamePicks.map((game) => game.name).join(", ")}, with ${samplePlay.game.name} picked. Your Play: ${samplePlay.name}, in its game's colour.`}
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
              {art.gameCover({ className: "h-24", game })}
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
      <div style={art.gameColour(samplePlay.game.slug)} className="game-scope">
        {playArt.playHeader(samplePlay)}
      </div>
    </StageRow>
  </IntroStage>
);

const pokedexCaptions = {
  caught: { icon: appIcons.product.caught, label: "Caught" },
  missing: { icon: null, label: "Missing" },
  seen: { icon: appIcons.product.seen, label: "Seen" },
} as const;

export const RecordAsYouGoStage = ({
  art,
  playArt,
}: {
  art: PublicArt;
  playArt: PublicPlayArt;
}) => (
  <IntroStage
    label={`Team: ${samplePlayTeam.map((pokemon) => pokemon.name).join(", ")}. Gym badges: all eight stamped. Pokédex: ${samplePlayPokedex.map((entry) => `${entry.name} ${pokedexCaptions[entry.state].label.toLowerCase()}`).join(", ")}.`}
    className="grid gap-4.5 md:grid-cols-2 xl:grid-cols-[minmax(0,1.05fr)_minmax(0,0.75fr)_minmax(0,1.2fr)] xl:items-start xl:gap-6.5"
  >
    <StageRow label="Team">
      <div className="grid grid-cols-3 gap-2">
        {samplePlayTeam.map((pokemon) => (
          <span
            key={pokemon.sprite_slug}
            style={getTypeColourStyle(pokemon.type)}
            className="sticker grid aspect-square place-items-center rounded-md"
          >
            <PokemonRender art={art} pokemon={pokemon} className="size-[88%]" />
          </span>
        ))}
      </div>
    </StageRow>
    <StageRow label="Gym badges">
      <div className="grid grid-cols-[repeat(4,42px)] gap-3 p-1">
        {samplePlayBadges.map((badge, index) => (
          <Fragment key={badge.name}>
            {playArt.badgeStamp({
              tilt: stampTilts[index] ?? 0,
              type: badge.type,
            })}
          </Fragment>
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
              {art.pokemonCard({
                className: "w-full",
                number: entry.number,
                pokemon: entry,
                size: "fluid",
                state: entry.state,
                types: entry.types,
              })}
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

export const LookBackStage = ({ playArt }: { playArt: PublicPlayArt }) => (
  <IntroStage
    label={`Three moments from the Play's history: ${samplePlayHistory.map((record) => record.kicker).join("; ")}.`}
  >
    <div className="bg-surface divide-line divide-y rounded-lg px-4 sm:px-4.5">
      {samplePlayHistory.map((record) => (
        <Fragment key={record.kicker}>
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
        </Fragment>
      ))}
    </div>
  </IntroStage>
);

export const PlanATeamStage = ({ art }: { art: PublicArt }) => (
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
          <span key={index} className="empty-slot aspect-square rounded-md" />
        ),
      )}
    </div>
  </IntroStage>
);

export const CodexStage = ({ art }: { art: PublicArt }) => (
  <IntroStage
    label={`Codex entries for ${introCodexEntries.map((entry) => entry.name).join(", ")}.`}
    className="flex-1 justify-center gap-3 sm:p-4.5"
  >
    <div className="grid grid-cols-3 gap-2">
      {introCodexEntries.map((entry) => (
        <Fragment key={entry.sprite_slug}>
          {art.pokemonCard({
            number: entry.number,
            pokemon: entry,
            size: "sm",
            state: "plain",
            types: entry.types,
          })}
        </Fragment>
      ))}
    </div>
  </IntroStage>
);
