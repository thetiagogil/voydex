"use client";

import { Meter as MeterPrimitive } from "@base-ui/react/meter";

import { cn } from "@/shared/utils/cn";

type MeterProps = {
  "aria-label": string;
  className?: string;
  /* The fill colour, such as `var(--t)` for a Pokémon's type. */
  fill: string;
  max?: number;
  min?: number;
  value: number;
  /* What a screen reader announces, when the bar's scale isn't the value's. */
  valueText?: string;
};

/*
 * A measurement on a known scale (role `meter`), drawn as v3's bar: a track
 * pressed in at the top and a fill in the given colour. For how far along
 * something is, use `Progress`.
 */
export const Meter = ({
  "aria-label": ariaLabel,
  className,
  fill,
  max = 100,
  min = 0,
  value,
  valueText,
}: MeterProps) => {
  return (
    <MeterPrimitive.Root
      aria-label={ariaLabel}
      value={value}
      min={min}
      max={max}
      getAriaValueText={valueText === undefined ? undefined : () => valueText}
      data-slot="meter"
      className={cn("w-full", className)}
    >
      <MeterPrimitive.Track
        data-slot="meter-track"
        className="bg-track shadow-track relative h-3.5 overflow-hidden rounded-full"
      >
        <MeterPrimitive.Indicator
          data-slot="meter-indicator"
          style={{ backgroundColor: fill }}
          className="shadow-fill rounded-full"
        />
      </MeterPrimitive.Track>
    </MeterPrimitive.Root>
  );
};
