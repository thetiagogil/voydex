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
          <Specimen
            label="default"
            note="The page's main action, with a tab's 15px words"
          >
            <Button>Start a Play</Button>
            <Button disabled>Start a Play</Button>
          </Specimen>
          <Specimen label="secondary" note="The quiet action">
            <Button variant="secondary">Cancel</Button>
            <Button variant="secondary" disabled>
              Cancel
            </Button>
          </Specimen>
          <Specimen
            label="destructive"
            note="Removes something: the quiet button, its words in wine"
          >
            <Button variant="destructive">Delete Play</Button>
            <Button variant="destructive" disabled>
              Delete Play
            </Button>
          </Specimen>
          <Specimen
            label="secondary, on a band"
            note="The same button on every ground"
            ground="band"
          >
            <Button variant="secondary">Edit</Button>
            <Button variant="secondary" disabled>
              Edit
            </Button>
          </Specimen>
          <Specimen
            label="quiet"
            note="A small tool beside a section's title: the outline alone"
            ground="band"
          >
            <Button variant="quiet">Mark all caught</Button>
            <Button variant="quiet" disabled>
              Unmark all
            </Button>
          </Specimen>
          <Specimen label="inverse" note="On the action red" ground="action">
            <Button variant="inverse">Open Voydex</Button>
            <Button variant="inverse">Log in</Button>
          </Specimen>
          <Specimen
            label="ghost"
            note="Bare words, only inside a field, a calendar, a menu or a card's corner"
          >
            <Button variant="ghost">Show</Button>
            <Button variant="ghost" size="icon" aria-label="Clear">
              <AppIcon icon={appIcons.actions.close} />
            </Button>
          </Specimen>
        </GalleryGroup>

        <GalleryGroup title="Sizes">
          <Specimen
            label="default and lg"
            note="36px everywhere. 48px only with fields in a form"
          >
            <Button>Save</Button>
            <Button size="lg">Log in</Button>
          </Specimen>
          <Specimen label="icon sizes" note="36 and 28px">
            <Button size="icon" variant="secondary" aria-label="Search">
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
