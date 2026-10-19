import type { CSSProperties } from "react";

import { PokemonTypeIcon } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, type AppIconComponent } from "@/shared/components/app-icon";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";

/*
 * Every moment wears one medallion: a round token with a white ring on a
 * soft drop (`--moment-drop`). Only what's inside changes: a gym badge in its type, a
 * League or trial trophy in gold, any other milestone in the calm blue, a
 * Pokémon on its type tint, a note warm, a status neutral, and where the
 * Play began in the accent.
 */
export type MedallionContent =
  | { kind: "badge"; type: PokemonTypeSlug }
  | { kind: "calm" | "gold"; icon: AppIconComponent }
  | {
      imageUrl: string;
      kind: "pokemon";
      /* The Pokémon pictured: its first letter stands in if the art fails. */
      name: string;
      type: PokemonTypeSlug | null;
    }
  | { icon: AppIconComponent; kind: "note" | "start" | "status" };

export type MedallionSize = "md" | "sm" | "xs";

const sizeClassNames: Record<MedallionSize, string> = {
  md: "moment-ring m-1.25 size-11.5 [&_svg]:size-5",
  sm: "moment-ring m-px size-8 [&_svg]:size-4",
  xs: "moment-ring-small m-0.5 size-6 [&_svg]:size-3",
};

const imageSizeClassNames: Record<MedallionSize, string> = {
  md: "size-14.5",
  sm: "size-10.5",
  xs: "size-8",
};

const getMedallionStyle = (content: MedallionContent): CSSProperties => {
  switch (content.kind) {
    case "badge":
      return {
        ...getPokemonTypeCssVariables(content.type),
        "--mf": "var(--t)",
      } as CSSProperties;
    case "calm":
      return {
        "--mf": "var(--calm)",
        "--mr": "color-mix(in oklab, var(--calm) 35%, white)",
      } as CSSProperties;
    case "gold":
      return {
        "--mf": "var(--gold)",
        "--mr": "var(--gold-ring)",
      } as CSSProperties;
    case "pokemon":
      return {
        ...getPokemonTypeCssVariables(content.type),
        "--mf": "color-mix(in oklab, var(--t) 16%, var(--surface))",
      } as CSSProperties;
    case "note":
      return {
        "--mf": "var(--warn-soft)",
        "--mr": "color-mix(in oklab, var(--warn) 40%, white)",
      } as CSSProperties;
    case "start":
      return {
        "--mf": "var(--action)",
        "--mr": "color-mix(in oklab, var(--action) 35%, white)",
      } as CSSProperties;
    case "status":
      return {
        "--mf": "var(--surface-2)",
        "--mr": "var(--line)",
      } as CSSProperties;
  }
};

const contentColourClassNames: Record<MedallionContent["kind"], string> = {
  badge: "text-white",
  calm: "text-white [&_svg]:stroke-[2.4]",
  gold: "text-white [&_svg]:stroke-[2.4]",
  note: "text-warn-ink",
  pokemon: "",
  start: "text-white",
  status: "text-ink-2",
};

type MedallionProps = {
  className?: string;
  content: MedallionContent;
  /* A Pokémon that left the team: its art washed out (v3 .med.mon.faded). */
  faded?: boolean;
  label?: string;
  size?: MedallionSize;
};

export const Medallion = ({
  className,
  content,
  faded = false,
  label,
  size = "md",
}: MedallionProps) => {
  return (
    <span
      role={label ? "img" : undefined}
      aria-label={label}
      aria-hidden={label ? undefined : true}
      style={getMedallionStyle(content)}
      className={cn(
        "relative grid shrink-0 place-items-center rounded-full bg-(--mf)",
        content.kind === "pokemon" ? "overflow-visible" : "overflow-hidden",
        sizeClassNames[size],
        contentColourClassNames[content.kind],
        className,
      )}
    >
      {content.kind === "badge" ? (
        <PokemonTypeIcon type={content.type} className="size-[48%]" />
      ) : content.kind === "pokemon" ? (
        <FallbackImage
          src={content.imageUrl}
          name={content.name}
          className={cn(
            "max-w-none",
            imageSizeClassNames[size],
            faded && "opacity-75 saturate-30",
          )}
          /* The letter fills the ring; the art stands a little proud of it. */
          fallbackClassName="size-full"
        />
      ) : (
        <AppIcon icon={content.icon} aria-hidden />
      )}
    </span>
  );
};
