"use client";

import { useState } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { Button } from "@/shared/components/ui/button";

import { Compare, GalleryGroup, GallerySection } from "./gallery-parts";

/*
 * The looks under review, drawn here only: each is today's component with
 * the proposed classes on top. Once a look is agreed the component takes it
 * and its pair leaves this file.
 */
const proposed = {
  /* Switched off, a button keeps its own colour, paler. */
  offDefault: "disabled:bg-action disabled:text-white disabled:opacity-40",
  offDestructive:
    "disabled:bg-danger-soft disabled:text-danger-deep disabled:opacity-45",
  /* A quiet button is flat: no white band, no shadow. */
  flat: "border-transparent bg-hover shadow-none hover:bg-lip active:bg-lip active:shadow-none",
};

const viewOptions = [
  { count: 99, label: "Pokémon", value: "pokemon" },
  { count: 5, label: "Favourites", value: "favourites" },
  { count: 38, label: "Games", value: "games" },
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

/* The first pass of the redesign: buttons and switches, each as a pair. */
export const GalleryProposals = () => {
  const [view, setView] = useState<string>("pokemon");
  const [display, setDisplay] = useState<string>("list");
  const [query, setQuery] = useState("");

  const toolbar = (flat: boolean, soft: boolean) => (
    <>
      <SearchControl
        ariaLabel="Search Plays"
        placeholder="Search Plays"
        className="max-w-44"
        value={query}
        onValueChange={setQuery}
      />
      <Button
        variant="secondary"
        size="icon"
        aria-label="Filters"
        className={flat ? proposed.flat : undefined}
      >
        <AppIcon icon={appIcons.actions.filter} />
      </Button>
      <SegmentedControl
        ariaLabel="Display"
        variant="segment"
        iconOnly
        selectedTone={soft ? "soft" : "strong"}
        value={display}
        onValueChange={setDisplay}
        options={displayOptions}
      />
      <Button>
        <AppIcon icon={appIcons.actions.create} inline="start" />
        New Play
      </Button>
    </>
  );

  return (
    <GallerySection
      id="proposals"
      title="Proposed: buttons and switches"
      description="The first pass. Each pair shows today's look and the proposed one on the same ground. Nothing here has changed in the app."
    >
      <GalleryGroup title="1. Red means do this, and only that" columns={1}>
        <Compare
          label="The picked option takes the soft tint"
          note="Today the strong red is both the main action and where you are, so a screen can show several reds."
          ground="band"
          today={
            <SegmentedControl
              ariaLabel="Collection views, today"
              selectedTone="strong"
              value={view}
              onValueChange={setView}
              options={viewOptions}
            />
          }
          proposed={
            <SegmentedControl
              ariaLabel="Collection views, proposed"
              selectedTone="soft"
              value={view}
              onValueChange={setView}
              options={viewOptions}
            />
          }
        />
        <Compare
          label="The same for a mode switch"
          note="A track's pick is soft too, so it never competes with the button beside it."
          today={
            <SegmentedControl
              ariaLabel="Mode, today"
              variant="segment"
              selectedTone="strong"
              value={view}
              onValueChange={setView}
              options={viewOptions}
            />
          }
          proposed={
            <SegmentedControl
              ariaLabel="Mode, proposed"
              variant="segment"
              selectedTone="soft"
              value={view}
              onValueChange={setView}
              options={viewOptions}
            />
          }
        />
      </GalleryGroup>

      <GalleryGroup title="2. Quiet buttons go flat" columns={1}>
        <Compare
          label="Secondary loses the white band and the shadow"
          note="The sticker edge stays for the main action and for owned Pokémon, so it means something again."
          today={
            <>
              <Button variant="secondary">Cancel</Button>
              <Button variant="secondary" size="sm">
                Edit
              </Button>
              <Button variant="secondary" size="icon" aria-label="Search">
                <AppIcon icon={appIcons.actions.search} />
              </Button>
              <Button>Save</Button>
            </>
          }
          proposed={
            <>
              <Button variant="secondary" className={proposed.flat}>
                Cancel
              </Button>
              <Button variant="secondary" size="sm" className={proposed.flat}>
                Edit
              </Button>
              <Button
                variant="secondary"
                size="icon"
                aria-label="Search"
                className={proposed.flat}
              >
                <AppIcon icon={appIcons.actions.search} />
              </Button>
              <Button>Save</Button>
            </>
          }
        />
        <Compare
          label="The same on the page ground"
          note="Flat needs a slightly darker grey to show on the ground, which ties into the whites and greys review."
          ground="ground"
          today={
            <>
              <Button variant="secondary">See all Plays</Button>
              <Button>Start a Play</Button>
            </>
          }
          proposed={
            <>
              <Button variant="secondary" className={proposed.flat}>
                See all Plays
              </Button>
              <Button>Start a Play</Button>
            </>
          }
        />
        <Compare
          label="A toolbar with both changes"
          note="One red on the line: the action. The tools and the pick step back."
          today={toolbar(false, false)}
          proposed={toolbar(true, true)}
        />
      </GalleryGroup>

      <GalleryGroup title="3. Switched off keeps its colour" columns={1}>
        <Compare
          label="A switched-off button is a paler version of itself"
          note="Today a switched-off red button turns grey and looks like a quiet button you can press."
          today={
            <>
              <Button disabled>Start a Play</Button>
              <Button variant="destructive" disabled>
                Delete Play
              </Button>
              <Button variant="secondary">Cancel</Button>
            </>
          }
          proposed={
            <>
              <Button disabled className={proposed.offDefault}>
                Start a Play
              </Button>
              <Button
                variant="destructive"
                disabled
                className={proposed.offDestructive}
              >
                Delete Play
              </Button>
              <Button variant="secondary" className={proposed.flat}>
                Cancel
              </Button>
            </>
          }
        />
      </GalleryGroup>
    </GallerySection>
  );
};
