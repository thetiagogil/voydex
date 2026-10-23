import type { CSSProperties } from "react";

import { PokemonTypeIcon } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, type AppIconComponent } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";
import { IconTip } from "@/shared/components/icon-tip";

/*
 * A badge stamp: the one thing that tilts at rest. A gym badge is its type
 * colour; a League milestone you've earned is gold. Stamps still ahead are
 * dashed, the next one a little stronger.
 */
export type BadgeStampState =
  | { kind: "badge"; type: PokemonTypeSlug | null }
  | { icon: AppIconComponent; kind: "earned" }
  | { icon?: AppIconComponent; kind: "next" | "todo" };

type BadgeStampProps = {
  className?: string;
  label: string;
  /* Called once the slap has played. */
  onSlapEnd?: () => void;
  /* Slaps down once, at the moment it's recorded; never on load. */
  slap?: boolean;
  state: BadgeStampState;
  tilt?: number;
};

export const BadgeStamp = ({
  className,
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
    ...(state.kind === "badge" ? getPokemonTypeCssVariables(state.type) : null),
    "--tilt": tilted ? `${tilt}deg` : undefined,
  } as CSSProperties;

  return (
    <IconTip
      label={label}
      trigger={
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
            state.kind === "badge" && "moment-ring bg-(--t) text-white",
            state.kind === "earned" &&
              "moment-ring bg-gold text-white [--mr:var(--gold-ring)]",
            (state.kind === "next" || state.kind === "todo") &&
              "text-ink-3 outline-lip inset-ring-line inset-ring-3 outline-3 outline-offset-3 outline-dashed",
            state.kind === "next" && "bg-surface-2",
            state.kind === "todo" && "opacity-60",
            className,
          )}
        >
          {state.kind === "badge" && state.type ? (
            <PokemonTypeIcon type={state.type} className="size-[46%]" />
          ) : state.kind !== "badge" && state.icon ? (
            <AppIcon icon={state.icon} className="size-[44%]" aria-hidden />
          ) : null}
        </span>
      }
    />
  );
};
