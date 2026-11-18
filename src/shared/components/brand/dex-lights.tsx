import { cn } from "@/shared/utils/cn";

type DexLightsProps = {
  className?: string;
  /*
   * Flashing one at a time, as a device does while it loads (the start
   * screen); left out, all three are on.
   */
  loading?: boolean;
};

const lights = ["bg-dex-red", "bg-dex-yellow", "bg-dex-green"] as const;

/*
 * The Dex's three small lights, beside the lens: a red, a yellow and a
 * green, each in a dark socket. They sit on the action red.
 */
export const DexLights = ({ className, loading = false }: DexLightsProps) => (
  <span aria-hidden className={cn("inline-flex gap-1.5", className)}>
    {lights.map((colour, index) => (
      <span
        key={colour}
        className="bg-action-lip block size-3.5 rounded-full p-0.5"
      >
        <span
          data-slot="dex-light"
          style={loading ? { animationDelay: `${index * 0.4}s` } : undefined}
          className={cn(
            "block size-full rounded-full",
            colour,
            loading && "animate-dex-light motion-reduce:animate-none",
          )}
        />
      </span>
    ))}
  </span>
);
