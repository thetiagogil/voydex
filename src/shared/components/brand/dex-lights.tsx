import { cn } from "@/shared/utils/cn";

type DexLightsProps = {
  className?: string;
  /* How many of the three are on, left to right; all of them when left out. */
  lit?: 0 | 1 | 2 | 3;
};

const lights = ["bg-action-soft", "bg-gold", "bg-ok-soft-2"] as const;

/*
 * The Dex's three small lights, beside the lens. On the start screen they
 * come on one by one as the device gets ready; elsewhere all three are on.
 * They sit on the action red.
 */
export const DexLights = ({ className, lit = 3 }: DexLightsProps) => (
  <span aria-hidden className={cn("inline-flex gap-1.5", className)}>
    {lights.map((colour, index) => (
      <span
        key={colour}
        className={cn(
          "border-action-lip block size-3.5 rounded-full border-2 transition-colors duration-300",
          index < lit ? colour : "bg-action-lip",
        )}
      />
    ))}
  </span>
);
