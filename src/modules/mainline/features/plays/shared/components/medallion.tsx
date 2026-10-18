import type { CSSProperties } from "react";

import { PokemonTypeIcon } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, type AppIconComponent } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

/*
 * Every moment wears one medallion: a round token with a white ring and a
 * small lip. Only what's inside changes: a gym badge in its type, any other
 * milestone in gold, a Pokémon on its type tint, a note warm, a status
 * neutral, and where the Play began in the accent.
 */
export type MedallionContent =
  | { kind: "badge"; type: PokemonTypeSlug }
  | { kind: "gold"; icon: AppIconComponent }
  | { imageUrl: string; kind: "pokemon"; type: PokemonTypeSlug | null }
  | { icon: AppIconComponent; kind: "note" | "start" | "status" };

export type MedallionSize = "md" | "sm" | "xs";

const sizeClassNames: Record<MedallionSize, string> = {
  md: "m-1.25 size-11.5 shadow-[0_0_0_3px_#fff,0_0_0_4.5px_var(--mr),0_3px_0_4.5px_var(--lip)] [&_svg]:size-5",
  sm: "m-px size-8 shadow-[0_0_0_2.5px_#fff,0_0_0_3.5px_var(--mr),0_2px_0_3.5px_var(--lip)] [&_svg]:size-4",
  xs: "m-0.5 size-6 shadow-[0_0_0_2px_#fff,0_0_0_3px_var(--mr)] [&_svg]:size-3",
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
        "--mr": "color-mix(in oklab, var(--t) 45%, white)",
      } as CSSProperties;
    case "gold":
      return {
        "--mf": "var(--gold)",
        "--mr": "var(--gold-ring)",
      } as CSSProperties;
    case "pokemon":
      return {
        ...getPokemonTypeCssVariables(content.type),
        "--mf": "color-mix(in oklab, var(--t) 22%, var(--surface))",
        "--mr": "color-mix(in oklab, var(--t) 45%, white)",
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
        // eslint-disable-next-line @next/next/no-img-element
        <img
          src={content.imageUrl}
          alt=""
          className={cn(
            "max-w-none",
            imageSizeClassNames[size],
            faded && "opacity-75 saturate-30",
          )}
        />
      ) : (
        <AppIcon icon={content.icon} aria-hidden />
      )}
    </span>
  );
};
