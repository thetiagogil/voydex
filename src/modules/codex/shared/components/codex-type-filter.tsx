"use client";

import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { Type } from "@/modules/reference/types";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";

type CodexTypeFilterProps = {
  onValueChange: (type: string) => void;
  types: Type[];
  /* The picked type's slug, or "" for every type. */
  value: string;
};

/*
 * A Codex list's type filter (v3 `.typefilter`): one dot per type. Picking
 * one fades the others; picking it again shows every type.
 */
export const CodexTypeFilter = ({
  onValueChange,
  types,
  value,
}: CodexTypeFilterProps) => {
  const typeOptions = types.flatMap((type) =>
    isPokemonTypeSlug(type.slug) ? [{ name: type.name, slug: type.slug }] : [],
  );

  return (
    <div role="group" aria-label="Filter by type" className="flex flex-wrap">
      {typeOptions.map((type) => {
        const isSelected = type.slug === value;

        return (
          <Tooltip key={type.slug}>
            <TooltipTrigger
              render={
                <button
                  type="button"
                  aria-label={type.name}
                  aria-pressed={isSelected}
                  onClick={() => onValueChange(isSelected ? "" : type.slug)}
                  className={cn(
                    "grid size-9 place-items-center rounded-full transition-[scale,opacity] duration-150 hover:scale-110",
                    value && !isSelected && "opacity-30",
                    isSelected && "scale-112 hover:scale-112",
                  )}
                />
              }
            >
              <PokemonTypeMark
                type={type.slug}
                className="size-7.5"
                iconClassName="size-4"
              />
            </TooltipTrigger>
            <TooltipContent>{type.name}</TooltipContent>
          </Tooltip>
        );
      })}
    </div>
  );
};
