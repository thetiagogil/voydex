"use client";

import Link from "next/link";
import { useState, useTransition, type ReactNode } from "react";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import { FormOverlay } from "@/modules/mainline/shared/components/form-overlay";
import { formatRuleLabel } from "@/modules/mainline/shared/data/challenge-rule-options";
import type { LibraryChoice } from "@/modules/mainline/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ChoiceChip } from "@/shared/components/choice-chip";
import { RemovableChip } from "@/shared/components/removable-chip";
import { Button } from "@/shared/components/ui/button";
import {
  Combobox,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxInput,
  ComboboxItem,
  ComboboxList,
  ComboboxTrigger,
} from "@/shared/components/ui/combobox";
import { menuOptionShapeClassName } from "@/shared/components/ui/menu-surface";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

export type LibraryCreateResult =
  | { choice: LibraryChoice; status: "success" }
  | { message: string; status: "error" };

type PickerItem = LibraryChoice & { isNew?: boolean };

/* Searching ignores case and accents, so "pokemon" finds "Pokémon". */
const toSearchText = (text: string) =>
  text
    .normalize("NFD")
    .replace(/\p{Diacritic}/gu, "")
    .toLowerCase()
    .trim();

const newItemId = "new";

/*
 * The rules or tags a Play keeps, as chips (the corner × takes one off this
 * Play only), then "+ Add": a picker of the rest of your
 * Library with a search. A name nothing has yet offers Create, which makes
 * it in your Library and adds it here; the foot links to the Library, where
 * names are fixed and deleted for good. A choice with options (Monotype's
 * type) opens them from its chip, and right after it's added.
 */
export const LibraryChoiceField = ({
  addLabel,
  choices,
  disabled = false,
  label,
  noun,
  onChange,
  onCreate,
  renderOptions,
  selectedIds,
}: {
  /* The chip's words, such as "Add rule". */
  addLabel: string;
  /* Everything you can pick, picked or not. */
  choices: LibraryChoice[];
  disabled?: boolean;
  /* The group's name, such as "Challenge rules". */
  label: string;
  /* "rule" or "tag". */
  noun: "rule" | "tag";
  onChange: (ids: string[]) => void;
  /* Makes a new one in your Library (or finds yours by that name). */
  onCreate: (name: string) => Promise<LibraryCreateResult>;
  /* The form for a picked choice's options, for choices with `hasOptions`. */
  renderOptions?: (choice: LibraryChoice) => ReactNode;
  selectedIds: string[];
}) => {
  const [query, setQuery] = useState("");
  const [isOpen, setIsOpen] = useState(false);
  const [created, setCreated] = useState<LibraryChoice[]>([]);
  const [isCreating, startCreating] = useTransition();
  /* The choice whose options are open; kept while the overlay closes. */
  const [optionsChoice, setOptionsChoice] = useState<LibraryChoice | null>(
    null,
  );
  const [isOptionsOpen, setIsOptionsOpen] = useState(false);
  /* Ones made here stay pickable until the page reads them back. */
  const known = [
    ...choices,
    ...created.filter((item) => !choices.some(({ id }) => id === item.id)),
  ];
  const byId = new Map(known.map((choice) => [choice.id, choice]));
  const selected = selectedIds.flatMap((id) => byId.get(id) ?? []);
  const name = query.trim().replace(/\s+/g, " ");
  const isTaken = known.some(
    (choice) => toSearchText(choice.name) === toSearchText(name),
  );
  const items: PickerItem[] = [
    ...known.filter((choice) => !selectedIds.includes(choice.id)),
    ...(name && !isTaken ? [{ id: newItemId, isNew: true, name }] : []),
  ];
  const isBusy = disabled || isCreating;

  const hasOptions = (choice: LibraryChoice) =>
    Boolean(renderOptions && choice.hasOptions);

  const openOptions = (choice: LibraryChoice) => {
    setOptionsChoice(choice);
    setIsOptionsOpen(true);
  };

  const add = (choice: LibraryChoice) => {
    if (!selectedIds.includes(choice.id)) {
      onChange([...selectedIds, choice.id]);

      if (hasOptions(choice)) openOptions(choice);
    }
  };

  const create = (newName: string) =>
    startCreating(async () => {
      const result = await onCreate(newName);

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      setCreated((current) => [...current, result.choice]);
      add(result.choice);
    });

  return (
    <div
      role="group"
      aria-label={label}
      className="flex flex-wrap items-center gap-2"
    >
      {selected.map((choice) => {
        const chipLabel = formatRuleLabel(choice.name, choice.detail ?? null);

        return (
          <RemovableChip
            key={choice.id}
            disabled={isBusy}
            removeLabel={`Remove ${choice.name}`}
            onRemove={() =>
              onChange(selectedIds.filter((value) => value !== choice.id))
            }
          >
            {hasOptions(choice) ? (
              <button
                type="button"
                disabled={isBusy}
                aria-label={`${chipLabel}: change options`}
                onClick={() => openOptions(choice)}
                className="focus-ring -mx-4 inline-flex min-h-10 items-center gap-1.5 rounded-full px-4 font-bold"
              >
                {chipLabel}
                <AppIcon icon={appIcons.actions.edit} size="sm" />
              </button>
            ) : (
              chipLabel
            )}
          </RemovableChip>
        );
      })}
      <Combobox
        items={items}
        value={null}
        inputValue={query}
        onInputValueChange={setQuery}
        open={isOpen}
        onOpenChange={(open) => {
          setIsOpen(open);

          if (!open) setQuery("");
        }}
        onValueChange={(item: PickerItem | null) => {
          if (!item) return;

          if (item.isNew) {
            create(item.name);
          } else {
            add(item);
          }

          setIsOpen(false);
          setQuery("");
        }}
        itemToStringLabel={(item: PickerItem) => item.name}
        itemToStringValue={(item: PickerItem) => item.id}
        filter={(item: PickerItem, search: string) =>
          Boolean(item.isNew) ||
          toSearchText(item.name).includes(toSearchText(search))
        }
        autoHighlight
      >
        <ComboboxTrigger
          showChevron={false}
          disabled={isBusy}
          aria-label={addLabel}
          aria-busy={isCreating || undefined}
          render={<ChoiceChip variant="add">{addLabel}</ChoiceChip>}
        >
          {isCreating ? (
            <>
              <Spinner className="size-3.5" />
              Adding
            </>
          ) : (
            addLabel
          )}
        </ComboboxTrigger>
        <ComboboxContent
          aria-label={addLabel}
          className="w-72 max-w-[calc(100vw-2rem)]"
        >
          <ComboboxInput
            aria-label={`Search or name a new ${noun}`}
            placeholder={`Search or name a new ${noun}`}
            showTrigger={false}
          />
          <ComboboxEmpty>{`Type a name to make a new ${noun}.`}</ComboboxEmpty>
          <ComboboxList>
            {(item: PickerItem) => (
              <ComboboxItem key={item.id} value={item}>
                {item.isNew ? (
                  <span className="flex min-w-0 items-center gap-2">
                    <AppIcon icon={appIcons.actions.create} size="sm" />
                    <span className="truncate">Create “{item.name}”</span>
                  </span>
                ) : (
                  <span className="truncate">{item.name}</span>
                )}
              </ComboboxItem>
            )}
          </ComboboxList>
          <div aria-hidden className="bg-line mx-2 my-1 h-px" />
          <Link
            href={appRoutes.mainlineLibraryTab(
              noun === "rule" ? "rules" : "tags",
            )}
            className={cn(
              menuOptionShapeClassName,
              "text-ink-2 hover:text-ink hover:bg-hover focus-ring-inset font-bold",
            )}
          >
            <AppIcon icon={appIcons.views.mainline.library} size="sm" />
            Manage in Library
          </Link>
        </ComboboxContent>
      </Combobox>
      {renderOptions ? (
        <FormOverlay
          open={isOptionsOpen}
          onOpenChange={setIsOptionsOpen}
          title={optionsChoice?.name ?? ""}
          description={optionsChoice?.description ?? undefined}
          footer={
            <Button type="button" onClick={() => setIsOptionsOpen(false)}>
              Done
            </Button>
          }
        >
          {optionsChoice ? renderOptions(optionsChoice) : null}
        </FormOverlay>
      ) : null}
    </div>
  );
};
