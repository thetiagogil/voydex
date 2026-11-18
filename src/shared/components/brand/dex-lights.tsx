import type { CSSProperties } from "react";

import { cn } from "@/shared/utils/cn";

export type DexLightColour = "green" | "red" | "yellow";

const colourClassNames: Record<DexLightColour, string> = {
  green: "bg-dex-green",
  red: "bg-dex-red",
  yellow: "bg-dex-yellow",
};

type DexLightProps = {
  className?: string;
  colour: DexLightColour;
  /* Flashing in its turn; `DexLights` sets when through `style`. */
  loading?: boolean;
  style?: CSSProperties;
};

/*
 * One of the Dex's lights: its colour, domed like the lens, in a dark
 * socket. Size it with `size-*`; the three together are `DexLights`.
 */
export const DexLight = ({
  className,
  colour,
  loading = false,
  style,
}: DexLightProps) => (
  <span
    aria-hidden
    className={cn(
      "bg-action-lip relative block size-3.5 shrink-0 rounded-full",
      className,
    )}
  >
    <span
      data-slot="dex-light"
      style={style}
      className={cn(
        "shadow-dex-light absolute inset-[14%] rounded-full",
        colourClassNames[colour],
        loading && "animate-dex-light motion-reduce:animate-none",
      )}
    />
  </span>
);

type DexLightsProps = {
  className?: string;
  /*
   * Flashing one at a time, as a device does while it loads (the start
   * screen); left out, all three are on.
   */
  loading?: boolean;
};

const lights = ["red", "yellow", "green"] as const;

/*
 * The Dex's three small lights, beside the lens: a red, a yellow and a
 * green. They sit on the action red. How it works gives each of its steps
 * one of them.
 */
export const DexLights = ({ className, loading = false }: DexLightsProps) => (
  <span aria-hidden className={cn("inline-flex gap-1.5", className)}>
    {lights.map((colour, index) => (
      <DexLight
        key={colour}
        colour={colour}
        loading={loading}
        style={loading ? { animationDelay: `${index * 0.4}s` } : undefined}
      />
    ))}
  </span>
);
