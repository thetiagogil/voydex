"use client";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { IconDisc } from "@/shared/components/icon-disc";
import { PickedMark } from "@/shared/components/picked-mark";
import { ProgressDonut } from "@/shared/components/progress-donut";
import { StatusBadge } from "@/shared/components/status-badge";
import {
  Alert,
  AlertDescription,
  AlertTitle,
} from "@/shared/components/ui/alert";
import { Badge } from "@/shared/components/ui/badge";
import { Meter } from "@/shared/components/ui/meter";
import { Progress } from "@/shared/components/ui/progress";
import { Spinner } from "@/shared/components/ui/spinner";

import { GalleryGroup, GallerySection, Specimen } from "./gallery-parts";

const badgeVariants = [
  "neutral",
  "outline",
  "ok",
  "warn",
  "calm",
  "danger",
  "gold",
  "select",
] as const;

const statusTones = [
  { label: "In progress", tone: "calm" },
  { label: "Paused", tone: "warn" },
  { label: "Completed", tone: "ok" },
  { label: "Dropped", tone: "danger" },
  { label: "Champion", tone: "gold" },
  { label: "Not started", tone: "neutral" },
] as const;

const discSizes = ["xs", "sm", "md", "lg", "xl"] as const;

/* Small marks that say what something is, and the ways the app shows waiting and progress. */
export const GalleryMarks = () => (
  <>
    <GallerySection
      id="labels"
      title="Labels and marks"
      description="A label is a pill, never a banner. A status adds a dot."
    >
      <GalleryGroup title="Badge">
        <Specimen
          label="Badge variants"
          note="Plain labels and soft meaning fills"
        >
          {badgeVariants.map((variant) => (
            <Badge key={variant} variant={variant}>
              {variant}
            </Badge>
          ))}
        </Specimen>
        <Specimen label="Badge sizes" note="sm 24px and md 28px">
          <Badge size="sm">sm</Badge>
          <Badge size="md">md</Badge>
          <Badge size="md" variant="ok">
            <AppIcon icon={appIcons.status.active} />
            With a mark
          </Badge>
        </Specimen>
        <Specimen
          label="Badge, paper"
          note="On a tinted picture or band"
          ground="band"
        >
          <Badge variant="paper">Lv. 48</Badge>
          <Badge variant="paper" size="sm">
            Shiny
          </Badge>
        </Specimen>
      </GalleryGroup>
      <GalleryGroup title="StatusBadge">
        <Specimen label="On a card" note="The soft fill carries the meaning">
          {statusTones.map((status) => (
            <StatusBadge key={status.label} tone={status.tone}>
              {status.label}
            </StatusBadge>
          ))}
        </Specimen>
        <Specimen
          label='ground="band"'
          note="White on the band; the dot keeps the meaning"
          ground="band"
        >
          {statusTones.map((status) => (
            <StatusBadge key={status.label} tone={status.tone} ground="band">
              {status.label}
            </StatusBadge>
          ))}
        </Specimen>
        <Specimen label="Sizes, and without the dot">
          <StatusBadge tone="ok" size="sm">
            xs
          </StatusBadge>
          <StatusBadge tone="ok" size="sm">
            sm
          </StatusBadge>
          <StatusBadge tone="ok" size="md">
            md
          </StatusBadge>
          <StatusBadge tone="ok" dot={false}>
            No dot
          </StatusBadge>
        </Specimen>
      </GalleryGroup>
      <GalleryGroup title="Discs and the picked mark">
        <Specimen
          label="IconDisc, quiet"
          note="An icon beside words, in cards and rows"
        >
          {discSizes.map((size) => (
            <IconDisc key={size} size={size}>
              <AppIcon icon={appIcons.actions.settings} />
            </IconDisc>
          ))}
        </Specimen>
        <Specimen label="IconDisc, band" note="On the page band" ground="band">
          {discSizes.map((size) => (
            <IconDisc key={size} size={size} tone="band">
              <AppIcon icon={appIcons.actions.settings} />
            </IconDisc>
          ))}
        </Specimen>
        <Specimen
          label="PickedMark"
          note="The one picked picture"
          ground="ground"
        >
          <span className="bg-surface-2 relative h-24 w-20 rounded-sm">
            <PickedMark />
          </span>
          <span className="bg-surface-2 relative h-16 w-14 rounded-sm">
            <PickedMark size="sm" />
          </span>
        </Specimen>
      </GalleryGroup>
    </GallerySection>

    <GallerySection
      id="feedback"
      title="Progress and messages"
      description="How far along something is, how much there is, and what the app has to say."
    >
      <GalleryGroup title="Progress" columns={3}>
        <Specimen
          label="Progress"
          note="How far along"
          className="flex-col items-stretch"
        >
          <Progress aria-label="Story" value={77} />
          <Progress aria-label="Pokédex" value={12} />
        </Specimen>
        <Specimen
          label="Meter"
          note="A measurement, in a given colour"
          className="flex-col items-stretch"
        >
          <Meter aria-label="Attack" value={80} max={150} fill="var(--calm)" />
          <Meter aria-label="Speed" value={130} max={150} fill="var(--ok)" />
        </Specimen>
        <Specimen label="ProgressDonut and Spinner">
          <ProgressDonut label="Story" value={77} className="w-20" />
          <ProgressDonut label="Pokédex" value={0} className="w-20" />
          <Spinner />
          <Spinner className="size-6" />
        </Specimen>
      </GalleryGroup>
      <GalleryGroup title="Alert">
        <Specimen
          label="default and success"
          className="flex-col items-stretch"
        >
          <Alert>
            <AppIcon icon={appIcons.status.info} />
            <AlertTitle>Saved on this device</AlertTitle>
            <AlertDescription>
              Log in to keep a copy of your Plays online.
            </AlertDescription>
          </Alert>
          <Alert variant="success">
            <AppIcon icon={appIcons.status.active} />
            <AlertTitle>Backup restored</AlertTitle>
            <AlertDescription>
              Your Plays are back on this device.
            </AlertDescription>
          </Alert>
        </Specimen>
        <Specimen
          label="warning and destructive"
          className="flex-col items-stretch"
        >
          <Alert variant="warning">
            <AppIcon icon={appIcons.status.warning} />
            <AlertTitle>This Plan is followed by 2 Plays</AlertTitle>
            <AlertDescription>
              A save changes how each Play compares with it.
            </AlertDescription>
          </Alert>
          <Alert variant="destructive">
            <AppIcon icon={appIcons.status.error} />
            <AlertTitle>That email or password is not right</AlertTitle>
            <AlertDescription>Check both and try again.</AlertDescription>
          </Alert>
        </Specimen>
      </GalleryGroup>
    </GallerySection>
  </>
);
