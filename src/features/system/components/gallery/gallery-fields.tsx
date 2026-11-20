"use client";

import { useState } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ChoiceChip } from "@/shared/components/choice-chip";
import { PasswordInput } from "@/shared/components/password-input";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import {
  SelectControl,
  type SelectControlOption,
} from "@/shared/components/select-control";
import { Toolbar, ToolbarGroup } from "@/shared/components/toolbar";
import {
  Field,
  FieldDescription,
  FieldError,
  FieldLabel,
} from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Textarea } from "@/shared/components/ui/textarea";

import { GalleryGroup, GallerySection, Specimen } from "./gallery-parts";

const sortOptions: SelectControlOption[] = [
  { label: "Recently played", value: "recent" },
  { label: "Name", value: "name" },
  { label: "Most progress", value: "progress" },
];

const generationOptions: SelectControlOption[] = [
  "Kanto",
  "Johto",
  "Hoenn",
  "Sinnoh",
  "Unova",
  "Kalos",
  "Alola",
  "Galar",
  "Paldea",
].map((region, index) => ({
  description: region,
  label: `Generation ${index + 1}`,
  value: String(index + 1),
}));

const natureOptions: SelectControlOption[] = [
  "Adamant",
  "Bold",
  "Brave",
  "Calm",
  "Careful",
  "Gentle",
  "Hasty",
  "Impish",
  "Jolly",
  "Modest",
  "Naive",
  "Timid",
].map((nature) => ({ label: nature, value: nature.toLowerCase() }));

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

/* What you type into and pick from, and the toolbar that lines them up. */
export const GalleryFields = () => {
  const [sort, setSort] = useState("recent");
  const [generation, setGeneration] = useState("");
  const [nature, setNature] = useState("");
  const [query, setQuery] = useState("");
  const [display, setDisplay] = useState<string>("list");
  const [onlyShiny, setOnlyShiny] = useState(false);

  return (
    <>
      <GallerySection
        id="fields"
        title="Fields"
        description="Every field is a 48px pill. A label sits above it, a note or an error below."
      >
        <GalleryGroup title="Text">
          <Specimen label="Field + Input" className="flex-col items-stretch">
            <Field>
              <FieldLabel htmlFor="gallery-name">Play name</FieldLabel>
              <Input id="gallery-name" placeholder="Sword – Late Journey" />
              <FieldDescription>You can change it later.</FieldDescription>
            </Field>
            <Field>
              <FieldLabel htmlFor="gallery-off">Switched off</FieldLabel>
              <Input
                id="gallery-off"
                defaultValue="Can't be changed"
                disabled
              />
            </Field>
          </Specimen>
          <Specimen label="With an error" className="flex-col items-stretch">
            <Field data-invalid>
              <FieldLabel htmlFor="gallery-email">Email</FieldLabel>
              <Input
                id="gallery-email"
                type="email"
                defaultValue="trainer@"
                aria-invalid
              />
              <FieldError>Enter a full email address.</FieldError>
            </Field>
            <Field>
              <FieldLabel htmlFor="gallery-password">Password</FieldLabel>
              <PasswordInput id="gallery-password" defaultValue="pikachu25" />
            </Field>
          </Specimen>
          <Specimen label="Textarea" className="flex-col items-stretch">
            <Field>
              <FieldLabel htmlFor="gallery-note">Note</FieldLabel>
              <Textarea
                id="gallery-note"
                placeholder="What happened in this moment?"
              />
            </Field>
          </Specimen>
          <Specimen label="SearchControl" className="flex-col items-stretch">
            <SearchControl
              ariaLabel="Search Plays"
              placeholder="Search Plays"
              value={query}
              onValueChange={setQuery}
            />
          </Specimen>
        </GalleryGroup>

        <GalleryGroup title="Selects" columns={3}>
          <Specimen
            label="SelectControl with a prefix"
            note="A sort, on a toolbar"
          >
            <SelectControl
              ariaLabel="Sort Plays"
              prefix="Sort"
              placeholder="Sort"
              options={sortOptions}
              value={sort}
              resetValue="recent"
              onValueChange={setSort}
            />
          </Specimen>
          <Specimen
            label="With a second line"
            note="A filter with nothing picked"
          >
            <SelectControl
              ariaLabel="Filter by generation"
              placeholder="Generation"
              options={generationOptions}
              value={generation}
              onValueChange={setGeneration}
            />
          </Specimen>
          <Specimen
            label="A long list"
            note="More than ten options open with a search"
          >
            <SelectControl
              ariaLabel="Nature"
              placeholder="Nature"
              options={natureOptions}
              value={nature}
              onValueChange={setNature}
            />
          </Specimen>
        </GalleryGroup>
      </GallerySection>

      <GallerySection
        id="toolbars"
        title="Toolbars"
        description="One line: the search stretches, each group after it keeps its own width."
      >
        <GalleryGroup title="Toolbar" columns={1}>
          <Specimen
            label="Toolbar"
            note="Search, a filter, a sort and a display switch"
            ground="band"
            className="items-stretch"
          >
            <Toolbar
              className="w-full"
              search={
                <SearchControl
                  ariaLabel="Search Plays"
                  placeholder="Search Plays"
                  value={query}
                  onValueChange={setQuery}
                />
              }
              trailing={
                <>
                  <ToolbarGroup>
                    <ChoiceChip
                      size="lg"
                      pressed={onlyShiny}
                      onClick={() => setOnlyShiny((value) => !value)}
                    >
                      Only shiny
                    </ChoiceChip>
                    <SelectControl
                      ariaLabel="Filter by generation"
                      placeholder="Generation"
                      options={generationOptions}
                      value={generation}
                      onValueChange={setGeneration}
                    />
                  </ToolbarGroup>
                  <SelectControl
                    ariaLabel="Sort Plays"
                    prefix="Sort"
                    placeholder="Sort"
                    options={sortOptions}
                    value={sort}
                    resetValue="recent"
                    onValueChange={setSort}
                  />
                  <SegmentedControl
                    ariaLabel="Display"
                    variant="segment"
                    iconOnly
                    value={display}
                    onValueChange={setDisplay}
                    options={displayOptions}
                  />
                </>
              }
            />
          </Specimen>
        </GalleryGroup>
      </GallerySection>
    </>
  );
};
