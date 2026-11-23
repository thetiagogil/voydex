"use client";

import { useState } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { CheckboxCard } from "@/shared/components/checkbox-card";
import { ChoiceChip } from "@/shared/components/choice-chip";
import { TagLabel } from "@/shared/components/tag-label";
import { RemovableChip } from "@/shared/components/removable-chip";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { Field, FieldContent, FieldLabel } from "@/shared/components/ui/field";
import { RadioGroup, RadioGroupItem } from "@/shared/components/ui/radio-group";
import { Switch } from "@/shared/components/ui/switch";

import { GalleryGroup, GallerySection, Specimen } from "./gallery-parts";

const viewOptions = [
  { count: 99, label: "Pokémon", value: "pokemon" },
  { count: 5, label: "Favourites", value: "favourites" },
  { count: 38, label: "Games", value: "games" },
] as const;

const filterOptions = [
  { label: "All", value: "all" },
  { label: "In progress", value: "progress" },
  { label: "Completed", value: "completed" },
  {
    disabled: true,
    disabledReason: "Not available yet",
    label: "Shared",
    value: "shared",
  },
] as const;

const displayOptions = [
  {
    icon: <AppIcon icon={appIcons.views.display.list} />,
    label: "List",
    value: "list",
  },
  {
    icon: <AppIcon icon={appIcons.views.display.grid} />,
    label: "Grid",
    value: "grid",
  },
] as const;

const statuses = ["In progress", "Paused", "Completed"];

/* Everything that picks: a place, a mode, a filter, one of several, on or off. */
export const GalleryChoices = () => {
  const [view, setView] = useState<string>("pokemon");
  const [filter, setFilter] = useState<string>("all");
  const [display, setDisplay] = useState<string>("list");
  const [rules, setRules] = useState(["Nuzlocke"]);
  const [tags, setTags] = useState(["First run", "With a friend"]);
  const [boxed, setBoxed] = useState(true);
  const [isOn, setIsOn] = useState(true);
  const [status, setStatus] = useState(statuses[0]);

  const toggleRule = (rule: string) =>
    setRules((current) =>
      current.includes(rule)
        ? current.filter((entry) => entry !== rule)
        : [...current, rule],
    );

  return (
    <>
      <GallerySection
        id="switches"
        title="Switches and tabs"
        description="One SegmentedControl, in two shapes: separate pills, or one track."
      >
        <GalleryGroup title="Pills">
          <Specimen
            label="pills, strong"
            note="Picks a scope: which view, which Pokédex"
            ground="band"
          >
            <SegmentedControl
              ariaLabel="Collection views"
              selectedTone="strong"
              value={view}
              onValueChange={setView}
              options={viewOptions}
            />
          </Specimen>
          <Specimen
            label="pills, soft"
            note="A filter, with one option switched off"
          >
            <SegmentedControl
              ariaLabel="Play status"
              value={filter}
              onValueChange={setFilter}
              options={filterOptions}
            />
          </Specimen>
          <Specimen label="pills, sm" note="Small pills, such as generations">
            <SegmentedControl
              ariaLabel="Play status, small"
              size="sm"
              value={filter}
              onValueChange={setFilter}
              options={filterOptions}
            />
          </Specimen>
        </GalleryGroup>
        <GalleryGroup title="Track">
          <Specimen label="segment" note="A switch between modes">
            <SegmentedControl
              ariaLabel="Mode"
              variant="segment"
              value={view}
              onValueChange={setView}
              options={viewOptions}
            />
          </Specimen>
          <Specimen
            label="segment, icon only"
            note="List or Grid on a full toolbar"
          >
            <SegmentedControl
              ariaLabel="Display"
              variant="segment"
              iconOnly
              value={display}
              onValueChange={setDisplay}
              options={displayOptions}
            />
          </Specimen>
          <Specimen label="segment, full width" note="Shares the row equally">
            <SegmentedControl
              ariaLabel="Mode, full width"
              variant="segment"
              fullWidth
              className="w-full"
              value={view}
              onValueChange={setView}
              options={viewOptions}
            />
          </Specimen>
        </GalleryGroup>
      </GallerySection>

      <GallerySection
        id="chips"
        title="Chips and choices"
        description="Pick several, keep some, tick one, switch one on."
      >
        <GalleryGroup title="Chips">
          <Specimen
            label="ChoiceChip"
            note="Pick several, then press them to see both states"
          >
            {["Nuzlocke", "No items", "Monotype"].map((rule) => (
              <ChoiceChip
                key={rule}
                pressed={rules.includes(rule)}
                onClick={() => toggleRule(rule)}
              >
                {rule}
              </ChoiceChip>
            ))}
            <ChoiceChip variant="add">Add a rule</ChoiceChip>
          </Specimen>
          <Specimen
            label="ChoiceChip, lg"
            note="48px, beside fields on a toolbar"
          >
            <ChoiceChip
              size="lg"
              pressed={boxed}
              onClick={() => setBoxed((value) => !value)}
            >
              Only shiny
            </ChoiceChip>
            <ChoiceChip size="lg" disabled>
              Only shiny
            </ChoiceChip>
          </Specimen>
          <Specimen
            label="TagLabel"
            note="A label a thing carries: a Play's tag or rule. Never a control"
          >
            <TagLabel>Nuzlocke</TagLabel>
            <TagLabel>First run</TagLabel>
            <TagLabel size="lg">With a friend</TagLabel>
          </Specimen>
          <Specimen
            label="RemovableChip"
            note="Something a Play keeps. Hover for the ×"
          >
            {tags.map((tag) => (
              <RemovableChip
                key={tag}
                removeLabel={`Remove ${tag}`}
                onRemove={() =>
                  setTags((current) => current.filter((entry) => entry !== tag))
                }
              >
                {tag}
              </RemovableChip>
            ))}
            {tags.length ? null : (
              <ChoiceChip
                variant="add"
                onClick={() => setTags(["First run", "With a friend"])}
              >
                Put them back
              </ChoiceChip>
            )}
          </Specimen>
        </GalleryGroup>

        <GalleryGroup title="Ticks, radios and switches">
          <Specimen
            label="CheckboxCard"
            note="A choice with its box showing"
            className="flex-col items-stretch"
          >
            <CheckboxCard
              id="gallery-boxed"
              title="Track the Pokédex"
              description="Count what you've caught in this Play."
              checked={boxed}
              onCheckedChange={(checked) => setBoxed(checked === true)}
            />
            <CheckboxCard
              id="gallery-boxed-compact"
              size="compact"
              title="Compact, one field tall"
              checked={boxed}
              onCheckedChange={(checked) => setBoxed(checked === true)}
            />
          </Specimen>
          <Specimen
            label="RadioGroup"
            note="One of a few, in a dialog"
            className="flex-col items-stretch"
          >
            <RadioGroup
              aria-label="Status"
              value={status}
              onValueChange={(value) => setStatus(String(value))}
            >
              {statuses.map((name) => (
                <FieldLabel key={name} className="cursor-pointer">
                  <Field orientation="horizontal" className="min-h-12 gap-3">
                    <RadioGroupItem value={name} />
                    <FieldContent>
                      <span className="copy-strong">{name}</span>
                    </FieldContent>
                  </Field>
                </FieldLabel>
              ))}
            </RadioGroup>
          </Specimen>
          <Specimen label="Switch" note="On or off, straight away">
            <Switch
              aria-label="Motion"
              checked={isOn}
              onCheckedChange={setIsOn}
            />
            <Switch
              aria-label="Motion, small"
              size="sm"
              checked={isOn}
              onCheckedChange={setIsOn}
            />
            <Switch aria-label="Motion, switched off" disabled />
          </Specimen>
        </GalleryGroup>
      </GallerySection>
    </>
  );
};
