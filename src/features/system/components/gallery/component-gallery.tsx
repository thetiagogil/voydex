import { PageBand } from "@/shared/components/page-band";
import { PageHeader } from "@/shared/components/page-header";
import { TextLink } from "@/shared/components/text-link";

import { GalleryActions } from "./gallery-actions";
import { GalleryCards } from "./gallery-cards";
import { GalleryChoices } from "./gallery-choices";
import { GalleryFields } from "./gallery-fields";
import { GalleryFoundations } from "./gallery-foundations";
import { GalleryMarks } from "./gallery-marks";
import { GalleryOverlays } from "./gallery-overlays";
import { GalleryProposals } from "./gallery-proposals";

const families = [
  { id: "proposals", label: "Proposed changes" },
  { id: "colours", label: "Colours" },
  { id: "type", label: "Type" },
  { id: "edges", label: "Edges and shadows" },
  { id: "buttons", label: "Buttons" },
  { id: "links", label: "Text links" },
  { id: "switches", label: "Switches and tabs" },
  { id: "chips", label: "Chips and choices" },
  { id: "labels", label: "Labels and marks" },
  { id: "feedback", label: "Progress and messages" },
  { id: "heads", label: "Section heads" },
  { id: "cards", label: "Cards" },
  { id: "fields", label: "Fields" },
  { id: "toolbars", label: "Toolbars" },
  { id: "overlays", label: "Overlays" },
];

/*
 * Every shared component as it looks today, family by family, each on the
 * ground it meets. The redesign reviews and changes one family at a time
 * here before it reaches a screen. Shown only while developing; product
 * pieces (a Pokémon's card, a Play's card, the bars) stay on their pages.
 */
export const ComponentGallery = () => (
  <main className="flex flex-col gap-8 pb-16 [--bar-h:0rem]">
    <PageBand>
      <PageHeader
        title="Component gallery"
        description="Every shared component as it is today. Only shown while developing."
      />
    </PageBand>
    <div className="page-column grid gap-10 lg:grid-cols-[13rem_minmax(0,1fr)]">
      <nav aria-label="Families" className="lg:sticky-column">
        <ul className="flex flex-wrap gap-x-4 gap-y-1 lg:flex-col">
          {families.map((family) => (
            <li key={family.id}>
              <TextLink href={`#${family.id}`} tone="quiet" standalone>
                {family.label}
              </TextLink>
            </li>
          ))}
        </ul>
      </nav>
      <div className="flex min-w-0 flex-col gap-14">
        <GalleryProposals />
        <GalleryFoundations />
        <GalleryActions />
        <GalleryChoices />
        <GalleryMarks />
        <GalleryCards />
        <GalleryFields />
        <GalleryOverlays />
      </div>
    </div>
  </main>
);
