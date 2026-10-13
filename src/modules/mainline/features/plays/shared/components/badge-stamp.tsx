import type { CSSProperties } from "react";

import { PokemonTypeIcon } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, type AppIconComponent } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

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
  state: BadgeStampState;
  tilt?: number;
};

const typeColour = (type: PokemonTypeSlug | null) =>
  type ? `var(--type-${type})` : "var(--mute)";

export const BadgeStamp = ({
  className,
  label,
  state,
  tilt = 0,
}: BadgeStampProps) => {
  const style = {
    "--t": state.kind === "badge" ? typeColour(state.type) : undefined,
    "--tilt": `${tilt}deg`,
  } as CSSProperties;

  return (
    <span
      role="img"
      aria-label={label}
      title={label}
      style={style}
      className={cn(
        "relative grid aspect-square w-full place-items-center rounded-full",
        state.kind === "badge" &&
          "rotate-(--tilt) bg-(--t) shadow-[0_0_0_3px_#fff,0_0_0_5px_color-mix(in_oklab,var(--t)_45%,white),0_4px_0_5px_var(--lip)]",
        state.kind === "earned" &&
          "bg-gold rotate-(--tilt) text-white shadow-[0_0_0_3px_#fff,0_0_0_5px_var(--gold-ring),0_4px_0_5px_var(--lip)]",
        (state.kind === "next" || state.kind === "todo") &&
          "text-ink-3 outline-lip shadow-[inset_0_0_0_3px_var(--line)] outline-3 outline-offset-3 outline-dashed",
        state.kind === "next" && "bg-surface-2",
        state.kind === "todo" && "opacity-60",
        (state.kind === "badge" || state.kind === "earned") &&
          "after:absolute after:inset-0 after:rounded-full after:bg-[radial-gradient(circle_at_30%_25%,rgb(255_255_255/0.45),transparent_45%)]",
        className,
      )}
    >
      {state.kind === "badge" && state.type ? (
        <PokemonTypeIcon type={state.type} className="size-[46%]" />
      ) : state.kind !== "badge" && state.icon ? (
        <AppIcon icon={state.icon} className="size-[44%]" aria-hidden />
      ) : null}
    </span>
  );
};
