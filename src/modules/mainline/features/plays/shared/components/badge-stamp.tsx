import type { CSSProperties } from "react";

import type { MilestoneBadge } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { AppIcon, type AppIconComponent } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";
import { IconTip } from "@/shared/components/icon-tip";
import {
  TipBody,
  TipCard,
  TipChip,
  TipHead,
  TipLine,
  TipText,
} from "@/shared/components/tip-parts";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";

import { BadgeArt } from "./badge-art";

/*
 * A badge stamp: the one thing that tilts at rest. A gym badge (its picture)
 * or an Alola trial is its type colour, a Grand Trial its type in a gold ring; a League
 * milestone you've earned is gold. Stamps still ahead are dashed, the next
 * one a little stronger.
 */
export type BadgeStampState =
  | { badge: MilestoneBadge | null; grand?: boolean; kind: "badge" }
  | { icon: AppIconComponent; kind: "earned" }
  | { icon?: AppIconComponent; kind: "next" | "todo" };

/* What a stamp's tip says beyond its name. */
export type BadgeStampFacts = {
  /* What earns it, in a line: who you beat and where. */
  description?: string | null;
  /* The day it was earned, as the viewer reads it. */
  earnedOn?: string | null;
  name: string;
  state: "earned" | "next" | "todo";
};

type BadgeStampProps = {
  className?: string;
  /*
   * Given, the stamp says more under the pointer: a card with its picture,
   * what earns it and when you did. Without them the tip is the label.
   */
  facts?: BadgeStampFacts;
  label: string;
  /* Called once the slap has played. */
  onSlapEnd?: () => void;
  /* Slaps down once, at the moment it's recorded; never on load. */
  slap?: boolean;
  state: BadgeStampState;
  tilt?: number;
};

const stampStateChips = {
  earned: { text: "Earned", tone: "ok" },
  next: { text: "Next", tone: "warn" },
  todo: { text: "Not yet", tone: undefined },
} as const;

/* The stamp's card: its picture and name on its type's frame, then the facts. */
const BadgeStampTip = ({
  facts,
  state,
}: {
  facts: BadgeStampFacts;
  state: BadgeStampState;
}) => {
  const badge = state.kind === "badge" ? state.badge : null;
  const chip = stampStateChips[facts.state];

  return (
    <TipCard tint={badge ? `var(--type-${badge.type})` : null}>
      <TipHead
        leading={
          badge ? (
            <span
              style={getPokemonTypeCssVariables(badge.type)}
              className="bg-surface grid size-12 shrink-0 place-items-center rounded-full text-white"
            >
              <BadgeArt badge={badge} iconClassName="size-[46%]" />
            </span>
          ) : undefined
        }
        name={facts.name}
        trailing={
          badge ? (
            <PokemonTypeBadge type={badge.type} display="icon" size="md" />
          ) : (
            <TipChip tone={chip.tone}>{chip.text}</TipChip>
          )
        }
      />
      {facts.description || facts.state === "earned" ? (
        <TipBody>
          {facts.description ? <TipText>{facts.description}</TipText> : null}
          {facts.state === "earned" ? (
            <TipLine>
              <TipChip tone="ok">Earned</TipChip>
              {facts.earnedOn}
            </TipLine>
          ) : null}
        </TipBody>
      ) : null}
    </TipCard>
  );
};

export const BadgeStamp = ({
  className,
  facts,
  label,
  onSlapEnd,
  slap = false,
  state,
  tilt = 0,
}: BadgeStampProps) => {
  const tilted = state.kind === "badge" || state.kind === "earned";
  /*
   * The tilt is a transform, the same property the slap animates, so the slap
   * lands on the stamp's own tilt and hands over to it without a jump.
   */
  const style = {
    ...(state.kind === "badge"
      ? getPokemonTypeCssVariables(state.badge?.type ?? null)
      : null),
    "--tilt": tilted ? `${tilt}deg` : undefined,
  } as CSSProperties;

  const stamp = (
    <span
      role="img"
      aria-label={label}
      style={style}
      onAnimationEnd={
        slap
          ? (event) => {
              if (event.target === event.currentTarget) {
                onSlapEnd?.();
              }
            }
          : undefined
      }
      className={cn(
        "relative grid aspect-square w-full place-items-center rounded-full",
        tilted && "transform-[rotate(var(--tilt))]",
        slap && "animate-stamp-slap",
        state.kind === "badge" && "moment-ring text-white",
        state.kind === "badge" &&
          (state.badge?.imageUrl ? "type-tint" : "bg-(--t)"),
        state.kind === "badge" && state.grand && "[--mr:var(--gold-ring)]",
        state.kind === "earned" &&
          "moment-ring bg-gold text-white [--mr:var(--gold-ring)]",
        (state.kind === "next" || state.kind === "todo") &&
          "text-ink-3 outline-lip inset-ring-line inset-ring-3 outline-3 outline-offset-3 outline-dashed",
        state.kind === "next" && "bg-surface-2",
        state.kind === "todo" && "opacity-60",
        className,
      )}
    >
      {state.kind === "badge" && state.badge ? (
        <BadgeArt badge={state.badge} iconClassName="size-[46%]" />
      ) : state.kind !== "badge" && state.icon ? (
        <AppIcon icon={state.icon} className="size-[44%]" aria-hidden />
      ) : null}
    </span>
  );

  return facts ? (
    <Tooltip>
      <TooltipTrigger render={stamp} />
      <TooltipContent variant="card">
        <BadgeStampTip facts={facts} state={state} />
      </TooltipContent>
    </Tooltip>
  ) : (
    <IconTip label={label} trigger={stamp} />
  );
};
