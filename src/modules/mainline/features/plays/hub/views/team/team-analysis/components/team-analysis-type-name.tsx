import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { Type } from "@/modules/reference/types";
import { cn } from "@/shared/utils/cn";

const sizeClassNames = {
  /* v3 `.tw`: a type named inside a sentence. */
  sm: { dot: "size-4.5", gap: "gap-1", icon: "size-2.75" },
  /* v3 `.tname`: a type heading a matchup row. */
  md: { dot: "size-6", gap: "gap-2.25", icon: "size-3.25" },
} as const;

/* A type as its dot and its name. */
export const TeamAnalysisTypeName = ({
  className,
  size = "md",
  type,
}: {
  className?: string;
  size?: keyof typeof sizeClassNames;
  type: Type;
}) => {
  const classNames = sizeClassNames[size];

  return (
    <span
      className={cn(
        "text-ink inline-flex items-center font-extrabold whitespace-nowrap",
        classNames.gap,
        className,
      )}
    >
      {isPokemonTypeSlug(type.slug) ? (
        <PokemonTypeMark
          type={type.slug}
          className={cn("shrink-0", classNames.dot)}
          iconClassName={classNames.icon}
        />
      ) : (
        <span
          aria-hidden
          className={cn("bg-mute shrink-0 rounded-full", classNames.dot)}
        />
      )}
      {type.name}
    </span>
  );
};
