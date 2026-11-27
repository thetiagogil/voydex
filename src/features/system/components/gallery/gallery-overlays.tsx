"use client";

import { useState } from "react";
import { toast } from "sonner";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { IconTip } from "@/shared/components/icon-tip";
import {
  TipBody,
  TipCard,
  TipChip,
  TipFigures,
  TipHead,
  TipNamed,
  TipRating,
  TipRow,
  TipRows,
  TipText,
} from "@/shared/components/tip-parts";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { OverlaySheet } from "@/shared/components/overlay-sheet";
import {
  AlertDialog,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
} from "@/shared/components/ui/alert-dialog";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Toaster, twoActionToast } from "@/shared/components/ui/sonner";

import { GalleryGroup, GallerySection, Specimen } from "./gallery-parts";

/* Everything that opens over the page: press each one to see it. */
export const GalleryOverlays = () => {
  const [confirming, setConfirming] = useState(false);

  return (
    <GallerySection
      id="overlays"
      title="Overlays"
      description="A dialog for something quick, a sheet for more, a confirm for yes or no. Press each to open it."
    >
      <GalleryGroup title="Dialog, sheet and confirm" columns={3}>
        <Specimen label="OverlayDialog" note="A name, a short form">
          <OverlayDialog
            size="sm"
            title="Rename this Play"
            description="The name shows on Home and in your Plays."
            trigger={<Button variant="secondary">Open a dialog</Button>}
            footer={<Button>Save</Button>}
          >
            <Field>
              <FieldLabel htmlFor="gallery-rename">Play name</FieldLabel>
              <Input id="gallery-rename" defaultValue="Sword – Late Journey" />
            </Field>
          </OverlayDialog>
        </Specimen>
        <Specimen
          label="OverlaySheet"
          note="From the side on desktop, from the bottom on phones"
        >
          <OverlaySheet
            title="Corviknight"
            meta="Level 48 · Flying / Steel"
            description="This Pokémon's details."
            trigger={<Button variant="secondary">Open a sheet</Button>}
            footer={<Button>Save</Button>}
          >
            <p className="text-ink-2 font-semibold">
              A sheet holds work that is more than a quick answer but
              doesn&apos;t need its own page.
            </p>
          </OverlaySheet>
        </Specimen>
        <Specimen label="AlertDialog" note="Only asks yes or no">
          <Button variant="destructive" onClick={() => setConfirming(true)}>
            Open a confirm
          </Button>
          <AlertDialog open={confirming} onOpenChange={setConfirming}>
            <AlertDialogContent>
              <AlertDialogHeader>
                <AlertDialogTitle>Delete this Play?</AlertDialogTitle>
                <AlertDialogDescription>
                  Its team, progress and moments go with it. This can&apos;t be
                  undone.
                </AlertDialogDescription>
              </AlertDialogHeader>
              <AlertDialogFooter>
                <AlertDialogCancel>Keep it</AlertDialogCancel>
                <Button
                  variant="destructive"
                  onClick={() => setConfirming(false)}
                >
                  Delete Play
                </Button>
              </AlertDialogFooter>
            </AlertDialogContent>
          </AlertDialog>
        </Specimen>
      </GalleryGroup>

      <GalleryGroup title="Menu, tip and toast" columns={3}>
        <Specimen label="DropdownMenu" note="The ⋯ menu of a card or a page">
          <DropdownMenu>
            <DropdownMenuTrigger
              render={
                <Button variant="secondary" size="icon" aria-label="More" />
              }
            >
              <AppIcon icon={appIcons.actions.more} />
            </DropdownMenuTrigger>
            <DropdownMenuContent align="start" className="w-auto min-w-52">
              <DropdownMenuItem>
                <AppIcon icon={appIcons.actions.edit} />
                Rename
              </DropdownMenuItem>
              <DropdownMenuItem>
                <AppIcon icon={appIcons.actions.share} />
                Share
              </DropdownMenuItem>
              <DropdownMenuSeparator />
              <DropdownMenuItem variant="destructive">
                <AppIcon icon={appIcons.actions.delete} />
                Delete
              </DropdownMenuItem>
            </DropdownMenuContent>
          </DropdownMenu>
        </Specimen>
        <Specimen
          label="IconTip"
          note="A bare name is a tag. Hover or focus the button"
        >
          <IconTip
            label="Pick a random team"
            trigger={
              <Button variant="secondary" size="icon" aria-label="Random team">
                <AppIcon icon={appIcons.actions.random} />
              </Button>
            }
          />
        </Specimen>
        <Specimen
          label="TipCard"
          note="Anything with more to say: pale blue, a type's colour, a verdict"
        >
          <TipNamed name="Plans are shared" width="sm">
            A Plan is edited only in the Team Planner.
          </TipNamed>
          <TipCard tint="var(--type-fire)" width="sm">
            <TipHead
              name="Flamethrower"
              sub="Fire · Special"
              trailing={<TipChip>TM 35</TipChip>}
            />
            <TipBody>
              <TipFigures
                figures={[
                  { label: "Power", value: 90 },
                  { label: "Accuracy", value: 100 },
                  { label: "PP", value: 15 },
                ]}
              />
              <TipText>May burn the target.</TipText>
            </TipBody>
          </TipCard>
          <TipCard tone="danger" width="sm">
            <TipHead
              name="Knockout power"
              sub="Your team struggles against many types."
              trailing={<TipChip tone="danger">Weak</TipChip>}
            />
            <TipBody>
              <TipRows>
                <TipRow
                  chip="Lv. 48"
                  detail="5 levels below your top"
                  name="Comet"
                  tone="warn"
                />
              </TipRows>
              <TipRating
                current="Weak"
                scale={[
                  { chip: "easily", label: "Strong", tone: "ok" },
                  { chip: "with effort", label: "Moderate", tone: "warn" },
                  { chip: "struggles", label: "Weak", tone: "danger" },
                ]}
              />
            </TipBody>
          </TipCard>
        </Specimen>
        <Specimen label="Toasts" note="Saved, failed, and one with two actions">
          <Button
            variant="secondary"
            onClick={() => toast.success("Play saved.")}
          >
            Saved
          </Button>
          <Button
            variant="secondary"
            onClick={() => toast.error("That didn't save. Try again.")}
          >
            Failed
          </Button>
          <Button
            variant="secondary"
            onClick={() =>
              toast("Your game data is out of date.", {
                ...twoActionToast,
                action: { label: "Try again", onClick: () => undefined },
                cancel: { label: "Not now", onClick: () => undefined },
              })
            }
          >
            Two actions
          </Button>
        </Specimen>
      </GalleryGroup>
      <Toaster />
    </GallerySection>
  );
};
