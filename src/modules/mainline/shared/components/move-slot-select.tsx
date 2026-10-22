"use client";

import { useRef } from "react";

import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import {
  Combobox,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxInput,
  ComboboxItem,
  ComboboxList,
  ComboboxTrigger,
} from "@/shared/components/ui/combobox";

export type MoveSlotOption = {
  /* Physical, Special or Status. */
  category?: string | null;
  label: string;
  typeName?: string | null;
  typeSlug?: string | null;
  value: string;
};

const emptyValue = "";

const toTypeSlug = (slug: string | null | undefined): PokemonTypeSlug | null =>
  slug && isPokemonTypeSlug(slug) ? slug : null;

const MoveType = ({ option }: { option: MoveSlotOption }) => {
  const type = toTypeSlug(option.typeSlug);

  return type ? (
    <PokemonTypeBadge
      type={type}
      display="icon"
      size="sm"
      label={option.typeName ?? type}
    />
  ) : null;
};

/*
 * v3 `.mvslot`: one of a Pokémon's four moves, tinted by the move's type,
 * with its slot number, type icon and name, and its category (Physical,
 * Special or Status) at the end, all on one line. It opens a searchable list;
 * the first entry leaves the slot empty. Shared by a Play's roster editor
 * and the Team Planner's slot sheet.
 */
export const MoveSlotSelect = ({
  emptyLabel = "Empty move slot",
  onValueChange,
  options,
  slot,
  value,
}: {
  emptyLabel?: string;
  onValueChange: (value: string | null) => void;
  options: MoveSlotOption[];
  /* 1 to 4. */
  slot: number;
  value: string | null;
}) => {
  const searchRef = useRef<HTMLInputElement>(null);
  const empty: MoveSlotOption = { label: emptyLabel, value: emptyValue };
  const items = [empty, ...options];
  const selected = options.find((option) => option.value === value) ?? null;
  const type = toTypeSlug(selected?.typeSlug);

  return (
    <Combobox
      items={items}
      value={selected ?? empty}
      onValueChange={(option: MoveSlotOption | null) =>
        onValueChange(option?.value ? option.value : null)
      }
      itemToStringLabel={(option: MoveSlotOption) => option.label}
      itemToStringValue={(option: MoveSlotOption) => option.value}
      isItemEqualToValue={(left: MoveSlotOption, right: MoveSlotOption) =>
        left.value === right.value
      }
      autoHighlight
      onOpenChange={(open) => {
        if (open) {
          // After the list mounts; the sheet around it keeps focus otherwise.
          setTimeout(() => searchRef.current?.focus(), 0);
        }
      }}
    >
      <ComboboxTrigger
        aria-label={`Move ${slot}: ${selected?.label ?? emptyLabel}`}
        style={getPokemonTypeCssVariables(type)}
        className="text-14 focus-ring flex h-13 w-full min-w-0 items-center gap-2.5 rounded-md bg-[color-mix(in_oklab,var(--t)_12%,var(--surface-2))] px-3.5 text-left hover:bg-[color-mix(in_oklab,var(--t)_18%,var(--surface-2))]"
      >
        <span className="text-ink-3 text-12 w-3 shrink-0 font-extrabold tabular-nums">
          {slot}
        </span>
        {selected ? (
          <>
            <MoveType option={selected} />
            <b className="min-w-0 truncate font-extrabold">{selected.label}</b>
            {selected.category ? (
              <span className="text-ink-3 text-12 ml-auto shrink-0 font-bold capitalize">
                {selected.category}
              </span>
            ) : null}
          </>
        ) : (
          <span className="text-ink-3 min-w-0 truncate font-semibold">
            {emptyLabel}
          </span>
        )}
      </ComboboxTrigger>
      {/* The search sits in the list and takes focus as it opens. */}
      <ComboboxContent className="min-w-64">
        <ComboboxInput
          ref={searchRef}
          showTrigger={false}
          placeholder="Search moves"
        />
        <ComboboxEmpty>Nothing matches.</ComboboxEmpty>
        <ComboboxList className="max-h-72">
          {(option: MoveSlotOption) => (
            <ComboboxItem key={option.value} value={option}>
              {option.value === emptyValue ? (
                <span className="text-ink-3 font-semibold">{option.label}</span>
              ) : (
                <>
                  <MoveType option={option} />
                  <span className="min-w-0 flex-1 truncate">
                    {option.label}
                  </span>
                  {option.category ? (
                    <span className="text-ink-3 text-12 shrink-0 font-bold capitalize">
                      {option.category}
                    </span>
                  ) : null}
                </>
              )}
            </ComboboxItem>
          )}
        </ComboboxList>
      </ComboboxContent>
    </Combobox>
  );
};
