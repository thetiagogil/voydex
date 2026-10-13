import type { CSSProperties } from "react";

import { PageHeader } from "@/shared/components/page-header";

import { PlaySettingsDangerSection } from "./sections/danger/play-settings-danger-section";
import { PlaySettingsGeneralSection } from "./sections/general/play-settings-general-section";
import { PlaySettingsRulesSection } from "./sections/rules/play-settings-rules-section";
import { PlaySettingsTrackingSection } from "./sections/tracking/play-settings-tracking-section";
import type { MainlinePlaySettingsData } from "./types";

/*
 * A form's only colour is the action green, so the page re-scopes the
 * context colour to it: picked chips and segments take the green selected
 * tint, not the game's (as Story's form does).
 */
const actionScopeStyle = {
  "--game": "var(--action)",
  "--game-strong": "var(--action)",
  "--gt": "17%",
} as CSSProperties;

const sections = [
  { href: "#general", label: "General" },
  { href: "#tracking", label: "Tracking" },
  { href: "#rules", label: "Challenge rules" },
  { href: "#archive", label: "Archive or delete" },
];

/*
 * Play settings (v3 `settings`): a quiet form in four cards, with a side
 * list of them on wide screens. Each card saves on its own from the footer
 * that appears once it has unsaved changes.
 */
export const MainlinePlaySettings = ({
  data,
  playId,
}: {
  data: MainlinePlaySettingsData;
  playId: string;
}) => (
  <div className="grid min-w-0 gap-6 sm:gap-7">
    <PageHeader
      headingLevel="h2"
      title="Play settings"
      description="What this Play is and what it keeps track of"
      className="pt-0 sm:pt-0"
    />
    <div
      className="game-scope grid min-w-0 items-start gap-6 lg:grid-cols-[200px_minmax(0,1fr)] lg:gap-8"
      style={actionScopeStyle}
    >
      <nav
        aria-label="Settings sections"
        className="sticky top-[calc(var(--play-dock-offset,0px)+0.75rem)] hidden lg:block"
      >
        <ul className="grid gap-1">
          {sections.map((section) => (
            <li key={section.href}>
              <a
                href={section.href}
                className="text-ink-2 text-14 hover:bg-hover hover:text-ink focus-visible:outline-focus flex min-h-10 items-center rounded-md px-3.5 font-bold focus-visible:outline-3 focus-visible:outline-solid"
              >
                {section.label}
              </a>
            </li>
          ))}
        </ul>
      </nav>
      <div className="grid min-w-0 gap-6 [&>section]:scroll-mt-[calc(var(--play-dock-offset,0px)+1rem)]">
        <PlaySettingsGeneralSection
          key={JSON.stringify(data.general)}
          data={data}
          playId={playId}
        />
        <PlaySettingsTrackingSection
          key={data.selectedExpansionIds.join()}
          data={data}
          playId={playId}
        />
        <PlaySettingsRulesSection
          key={data.selectedRuleIds.join()}
          data={data}
          playId={playId}
        />
        <PlaySettingsDangerSection
          isArchived={data.isArchived}
          playId={playId}
          playName={data.general.name}
        />
      </div>
    </div>
  </div>
);
