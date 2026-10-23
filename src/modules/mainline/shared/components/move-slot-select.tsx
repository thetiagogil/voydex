"use client";

import { useRef } from "react";

import { MoveCategoryIcon } from "@/modules/reference/features/moves/components/move-category-icon";
import {
  PokemonTypeBadge,
  PokemonTypeMark,
} from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { HoverInfo } from "@/shared/components/hover-info";
import {
  Combobox,
  ComboboxCollection,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxGroup,
  ComboboxInput,
  ComboboxItem,
  ComboboxLabel,
  ComboboxList,
  ComboboxTrigger,
} from "@/shared/components/ui/combobox";
import { TipNamed } from "@/shared/components/tip-parts";

export type MoveSlotOption = {
  /* Physical, Special or Status. */
  category?: string | null;
  /* What the move does: a faint "i" in the list, and the field's hover. */
  info?: string | null;
  /*
   * How the Pokémon learns it here: the list's group ("Level up", "TM"),
   * the row's "Lv. 12" or "TM 08", and its place in the group.
   */
  learn?: {
    detail: string;
    label: string;
    methodOrder: number;
    order: number;
  } | null;
  label: string;
  typeName?: string | null;
  typeSlug?: string | null;
  value: string;
};

const emptyValue = "";

/* Moves it knows that its learnset here doesn't list. */
const otherGroup = "Others it knows";

type MoveSlotGroup = { items: MoveSlotOption[]; value: string };

/*
 * The list as Codex groups a learnset: by how the move is learned, in the
 * methods' order, each group in its own order (level, then machine number),
 * then by name; the empty choice leads under no heading.
 */
export const groupMoveSlotOptions = (
  empty: MoveSlotOption,
  options: readonly MoveSlotOption[],
): MoveSlotGroup[] => {
  const groups = new Map<string, MoveSlotOption[]>();

  for (const option of options.toSorted(
    (left, right) =>
      (left.learn?.methodOrder ?? Number.MAX_SAFE_INTEGER) -
        (right.learn?.methodOrder ?? Number.MAX_SAFE_INTEGER) ||
      (left.learn?.order ?? 0) - (right.learn?.order ?? 0) ||
      left.label.localeCompare(right.label),
  )) {
    const key = option.learn?.label ?? otherGroup;

    groups.set(key, [...(groups.get(key) ?? []), option]);
  }

  return [
    { items: [empty], value: "" },
    ...[...groups].map(([value, items]) => ({ items, value })),
  ];
};

const toTypeSlug = (slug: string | null | undefined): PokemonTypeSlug | null =>
  slug && isPokemonTypeSlug(slug) ? slug : null;

/* A move's type beside its name in the info tip. */
const MoveTipMark = ({ slug }: { slug: string | null | undefined }) => {
  const type = toTypeSlug(slug);

  return type ? (
    <PokemonTypeMark
      type={type}
      className="size-6 shrink-0"
      iconClassName="size-3.5"
    />
  ) : null;
};

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
 * with its slot number, type icon and name, and its category's icon
 * (Physical, Special or Status) at the end, all on one line. Its list groups the moves
 * by how they are learned, as Codex does. It opens a searchable list;
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
  const groups = groupMoveSlotOptions(empty, options);
  const selected = options.find((option) => option.value === value) ?? null;
  const type = toTypeSlug(selected?.typeSlug);

  const field = (
    <Combobox
      items={groups}
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
        aria-description={selected?.info ?? undefined}
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
            <MoveCategoryIcon
              damageClass={selected.category}
              className="ml-auto"
              tip={false}
            />
          </>
        ) : (
          <span className="text-ink-3 min-w-0 truncate font-semibold">
            {emptyLabel}
          </span>
        )}
      </ComboboxTrigger>
      {/* The search sits in the list and takes focus as it opens. */}
      <ComboboxContent className="min-w-80">
        <ComboboxInput
          ref={searchRef}
          showTrigger={false}
          placeholder="Search moves"
        />
        <ComboboxEmpty>Nothing matches.</ComboboxEmpty>
        <ComboboxList className="max-h-96">
          {(group: MoveSlotGroup) => (
            <ComboboxGroup key={group.value} items={group.items}>
              {group.value ? (
                <ComboboxLabel>{group.value}</ComboboxLabel>
              ) : null}
              <ComboboxCollection>
                {(option: MoveSlotOption) => (
                  <ComboboxItem key={option.value} value={option}>
                    {option.value === emptyValue ? (
                      <span className="text-ink-3 font-semibold">
                        {option.label}
                      </span>
                    ) : (
                      <>
                        {/* How it's learned, as Codex's How column: "Lv. 12", "TM 08". */}
                        {option.learn ? (
                          <span className="text-ink-3 text-12 w-11 shrink-0 font-bold tabular-nums">
                            {option.learn.detail}
                          </span>
                        ) : null}
                        <MoveType option={option} />
                        <span className="min-w-0 flex-1 truncate">
                          {option.label}
                        </span>
                        <MoveCategoryIcon damageClass={option.category} />
                        {option.info ? (
                          <>
                            <span className="sr-only">, {option.info}</span>
                            <ExplanatoryTip
                              inert
                              content={
                                <TipNamed
                                  leading={
                                    <MoveTipMark slug={option.typeSlug} />
                                  }
                                  name={option.label}
                                >
                                  {option.info}
                                </TipNamed>
                              }
                              triggerVariant="subtle"
                            />
                          </>
                        ) : null}
                      </>
                    )}
                  </ComboboxItem>
                )}
              </ComboboxCollection>
            </ComboboxGroup>
          )}
        </ComboboxList>
      </ComboboxContent>
    </Combobox>
  );

  /* A picked move shows what it does on hover, as the ability field does. */
  return <HoverInfo info={selected?.info}>{field}</HoverInfo>;
};
