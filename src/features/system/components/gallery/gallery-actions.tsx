"use client";

import { useState } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Link } from "@/shared/components/link";
import { TextLink } from "@/shared/components/text-link";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import { ButtonGroup } from "@/shared/components/ui/button-group";
import { Spinner } from "@/shared/components/ui/spinner";

import { GalleryGroup, GallerySection, Specimen } from "./gallery-parts";

/* Buttons and links: everything you press to do something or go somewhere. */
export const GalleryActions = () => {
  const [pressed, setPressed] = useState(true);

  return (
    <>
      <GallerySection
        id="buttons"
        title="Buttons"
        description="One Button. Its variant says what kind of action it is, its size says where it sits."
      >
        <GalleryGroup title="Variants" columns={3}>
          <Specimen label="default" note="The page's main action">
            <Button>Start a Play</Button>
            <Button disabled>Start a Play</Button>
          </Specimen>
          <Specimen label="secondary" note="The quiet action">
            <Button variant="secondary">Cancel</Button>
            <Button variant="secondary" disabled>
              Cancel
            </Button>
          </Specimen>
          <Specimen label="destructive" note="Removes something">
            <Button variant="destructive">Delete Play</Button>
            <Button variant="destructive" disabled>
              Delete Play
            </Button>
          </Specimen>
          <Specimen label="tint" note="On a tinted band" ground="band">
            <Button variant="tint">Edit</Button>
            <Button variant="tint" disabled>
              Edit
            </Button>
          </Specimen>
          <Specimen label="inverse" note="On the action red" ground="action">
            <Button variant="inverse">Open Voydex</Button>
            <Button variant="inverse" size="sm">
              Log in
            </Button>
          </Specimen>
          <Specimen
            label="soft and ghost"
            note="Flat: inside a field, in a row of choices"
          >
            <Button variant="soft" size="sm">
              Show
            </Button>
            <Button variant="ghost" size="sm">
              More details
            </Button>
          </Specimen>
        </GalleryGroup>

        <GalleryGroup title="Sizes">
          <Specimen label="lg, default, sm" note="56, 48 and 36px">
            <Button size="lg">Start a Play</Button>
            <Button>Save</Button>
            <Button size="sm">Add</Button>
          </Specimen>
          <Specimen label="icon sizes" note="56, 48, 36 and 28px">
            <Button size="icon-lg" variant="secondary" aria-label="Search">
              <AppIcon icon={appIcons.actions.search} />
            </Button>
            <Button size="icon" variant="secondary" aria-label="Search">
              <AppIcon icon={appIcons.actions.search} />
            </Button>
            <Button size="icon-sm" variant="secondary" aria-label="Search">
              <AppIcon icon={appIcons.actions.search} />
            </Button>
            <Button size="icon-xs" variant="secondary" aria-label="Search">
              <AppIcon icon={appIcons.actions.search} />
            </Button>
          </Specimen>
        </GalleryGroup>

        <GalleryGroup title="With an icon, busy, pressed and joined">
          <Specimen label="Icon at the start or the end">
            <Button>
              <AppIcon icon={appIcons.actions.create} inline="start" />
              New Play
            </Button>
            <Button variant="secondary">
              Continue
              <AppIcon icon={appIcons.actions.continue} inline="end" />
            </Button>
          </Specimen>
          <Specimen label="Busy" note="A spinner leads and the button waits">
            <Button disabled aria-busy>
              <Spinner data-icon="inline-start" />
              Saving...
            </Button>
            <Button variant="destructive" disabled aria-busy>
              <Spinner data-icon="inline-start" />
              Deleting...
            </Button>
          </Specimen>
          <Specimen
            label="aria-pressed"
            note="An on/off action: press it to see both"
          >
            <Button
              variant="secondary"
              aria-pressed={pressed}
              onClick={() => setPressed((value) => !value)}
            >
              Shiny
            </Button>
            <Button
              variant="ghost"
              aria-pressed={pressed}
              onClick={() => setPressed((value) => !value)}
            >
              Shiny
            </Button>
          </Specimen>
          <Specimen
            label="ButtonGroup"
            note="An action and its menu, as one pill"
          >
            <ButtonGroup aria-label="Save">
              <Button variant="secondary">Save Plan</Button>
              <Button
                variant="secondary"
                size="icon"
                aria-label="More ways to save"
              >
                <AppIcon icon={appIcons.actions.expand} />
              </Button>
            </ButtonGroup>
          </Specimen>
        </GalleryGroup>

        <GalleryGroup title="Links that look like buttons">
          <Specimen
            label="buttonVariants on a Link"
            note="Goes somewhere, with a button's weight"
          >
            <Link href="#buttons" className={buttonVariants()}>
              Browse the Codex
            </Link>
            <Link
              href="#buttons"
              className={buttonVariants({ variant: "secondary" })}
            >
              <AppIcon icon={appIcons.actions.back} inline="start" />
              My Plans
            </Link>
          </Specimen>
        </GalleryGroup>
      </GallerySection>

      <GallerySection
        id="links"
        title="Text links"
        description="Words that go somewhere or do one small thing. Never a button in disguise."
      >
        <GalleryGroup title="Tones" columns={3}>
          <Specimen
            label="action"
            note="The default, with and without the arrow"
          >
            <TextLink href="#links">Forgot password?</TextLink>
            <TextLink href="#links" arrow="forward">
              Open team
            </TextLink>
          </Specimen>
          <Specimen label="quiet" note="A footer, a breadcrumb">
            <TextLink href="#links" tone="quiet">
              Privacy
            </TextLink>
            <TextLink href="#links" tone="quiet" arrow="forward">
              See all
            </TextLink>
          </Specimen>
          <Specimen label="onInk" note="Inside a dark tip" ground="ink">
            <TextLink href="#links" tone="onInk">
              Open in Codex
            </TextLink>
          </Specimen>
        </GalleryGroup>
      </GallerySection>
    </>
  );
};
