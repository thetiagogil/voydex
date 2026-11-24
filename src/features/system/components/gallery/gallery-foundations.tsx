import type { CSSProperties } from "react";

import { cn } from "@/shared/utils/cn";

import { GalleryGroup, GallerySection, Specimen } from "./gallery-parts";

type Swatch = { name: string; token: string; use: string };

const grounds: Swatch[] = [
  { name: "Ground", token: "--bg", use: "The page" },
  { name: "Surface", token: "--surface", use: "Cards, fields, menus" },
  { name: "Inset", token: "--surface-2", use: "A tile inside a card" },
  { name: "Hover", token: "--hover", use: "Under the pointer" },
  { name: "Band", token: "--band-fill", use: "The page band" },
];

const inks: Swatch[] = [
  { name: "Ink", token: "--ink", use: "Titles and values" },
  { name: "Ink 2", token: "--ink-2", use: "Body and labels" },
  { name: "Ink 3", token: "--ink-3", use: "Quiet notes" },
  { name: "Mute", token: "--mute", use: "Off states" },
  { name: "Line", token: "--line", use: "Hairlines" },
  { name: "Track", token: "--track", use: "Empty bars" },
];

const actions: Swatch[] = [
  { name: "Action", token: "--action", use: "The main action" },
  { name: "Action deep", token: "--action-deep", use: "Hover, the site's bar" },
  { name: "Action soft", token: "--action-soft", use: "Hover on white" },
  { name: "Selected", token: "--select-soft", use: "You are here" },
  { name: "Link", token: "--link", use: "Text links" },
  { name: "Calm", token: "--calm", use: "Progress, counts" },
];

const meanings: Swatch[] = [
  { name: "OK", token: "--ok", use: "Done, strong" },
  { name: "OK soft", token: "--ok-soft", use: "Its pill" },
  { name: "Warn", token: "--warn", use: "Paused, careful" },
  { name: "Warn soft", token: "--warn-soft", use: "Its pill" },
  { name: "Danger", token: "--danger", use: "Removing, at risk" },
  { name: "Danger soft", token: "--danger-soft", use: "Its pill" },
  { name: "Calm soft", token: "--calm-soft", use: "In progress" },
  { name: "Gold", token: "--gold", use: "Rewards" },
];

const SwatchRow = ({ swatches }: { swatches: Swatch[] }) => (
  <ul className="grid grid-cols-2 gap-3 sm:grid-cols-3 lg:grid-cols-6">
    {swatches.map((swatch) => (
      <li key={swatch.token} className="flex min-w-0 flex-col gap-1.5">
        <span
          aria-hidden
          style={{ backgroundColor: `var(${swatch.token})` }}
          className="border-line h-16 rounded-sm border"
        />
        <span className="copy-strong">{swatch.name}</span>
        <span className="text-ink-2 copy-meta">{swatch.use}</span>
      </li>
    ))}
  </ul>
);

const titles = [
  { className: "title-display", name: "title-display", sample: "Welcome back" },
  {
    className: "title-hero",
    name: "title-hero",
    sample: "Sword – Late Journey",
  },
  { className: "title-page", name: "title-page", sample: "Your Plays" },
  {
    className: "title-section",
    name: "title-section",
    sample: "Latest moments",
  },
  { className: "title-card", name: "title-card", sample: "Team check" },
];

const bodies = [
  {
    className: "copy-strong",
    name: "copy-strong",
    use: "A name or a value that matters",
  },
  { className: "copy-body", name: "copy-body", use: "Running text" },
  { className: "copy-note", name: "copy-note", use: "The line under a title" },
  {
    className: "copy-label",
    name: "copy-label",
    use: "A label or a small heading",
  },
  {
    className: "copy-meta",
    name: "copy-meta",
    use: "Small facts: a date, a count",
  },
  { className: "copy-mark", name: "copy-mark", use: "The words on a mark" },
  {
    className: "copy-number",
    name: "copy-number",
    use: "A Pokédex number on a card",
  },
];

const stickerTypes = ["grass", "fire", "water", "electric"];

const shadows = [
  { className: "shadow-card", name: "shadow-card", use: "A section: flat" },
  { className: "shadow-open", name: "shadow-open", use: "You can open it" },
  { className: "shadow-button", name: "shadow-button", use: "The main action" },
  {
    className: "shadow-float",
    name: "shadow-float",
    use: "Menus, floating cards",
  },
  {
    className: "shadow-overlay",
    name: "shadow-overlay",
    use: "Dialogs and sheets",
  },
];

/* Colours, type, edges and shadows: what every component is made of. */
export const GalleryFoundations = () => (
  <>
    <GallerySection
      id="colours"
      title="Colours"
      description="One palette for the whole app. Each colour has one job."
    >
      <GalleryGroup title="Grounds and surfaces" columns={1}>
        <SwatchRow swatches={grounds} />
      </GalleryGroup>
      <GalleryGroup title="Ink and lines" columns={1}>
        <SwatchRow swatches={inks} />
      </GalleryGroup>
      <GalleryGroup title="Action and selection" columns={1}>
        <SwatchRow swatches={actions} />
      </GalleryGroup>
      <GalleryGroup title="Meanings" columns={1}>
        <SwatchRow swatches={meanings} />
      </GalleryGroup>
    </GallerySection>

    <GallerySection
      id="type"
      title="Type"
      description="Baloo 2 for headings and names, Nunito for everything you operate."
    >
      <GalleryGroup title="Titles (Baloo 2)" columns={1}>
        <Specimen label="Title steps" className="flex-col items-start gap-4">
          {titles.map((title) => (
            <p key={title.name} className="flex flex-wrap items-baseline gap-3">
              <span className={title.className}>{title.sample}</span>
              <span className="text-ink-2 copy-meta">{title.name}</span>
            </p>
          ))}
        </Specimen>
      </GalleryGroup>
      <GalleryGroup title="Text (Nunito)" columns={1}>
        <Specimen
          label="Text styles"
          note="Four sizes: 12, 13, 15 and 17"
          className="flex-col items-start gap-2"
        >
          {bodies.map((body) => (
            <p key={body.name} className="flex flex-wrap items-baseline gap-3">
              <span className={body.className}>{body.use}</span>
              <span className="text-ink-2 copy-meta">{body.name}</span>
            </p>
          ))}
        </Specimen>
      </GalleryGroup>
    </GallerySection>

    <GallerySection
      id="edges"
      title="Edges and shadows"
      description="Sections are flat. A small edge means you can open it. Only the main action lifts."
    >
      <GalleryGroup title="Stickers">
        <Specimen
          label="sticker + type-tint"
          note="An owned Pokémon, tinted by its type"
          ground="ground"
        >
          {stickerTypes.map((type) => (
            <span
              key={type}
              aria-hidden
              style={{ "--t": `var(--type-${type})` } as CSSProperties}
              className="sticker type-tint size-20 rounded-lg"
            />
          ))}
        </Specimen>
        <Specimen
          label="empty-slot and bubble"
          note="A free slot, and the small picked mark"
          ground="ground"
        >
          <span aria-hidden className="empty-slot size-20 rounded-lg" />
          <span aria-hidden className="bg-action bubble size-7 rounded-full" />
        </Specimen>
      </GalleryGroup>
      <GalleryGroup title="Shadows" columns={1}>
        <Specimen label="Shadow steps" ground="ground" className="gap-6 p-6">
          {shadows.map((shadow) => (
            <span
              key={shadow.name}
              className={cn(
                "bg-surface flex h-20 w-44 flex-col justify-center rounded-lg px-4",
                shadow.className,
              )}
            >
              <span className="copy-strong">{shadow.name}</span>
              <span className="text-ink-2 copy-meta">{shadow.use}</span>
            </span>
          ))}
        </Specimen>
      </GalleryGroup>
    </GallerySection>
  </>
);
