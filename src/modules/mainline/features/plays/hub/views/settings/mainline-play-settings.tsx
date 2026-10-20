import { PageHeader } from "@/shared/components/page-header";

import { SettingsSectionNav } from "./components/settings-section-nav";
import { PlaySettingsDangerSection } from "./sections/danger/play-settings-danger-section";
import { PlaySettingsGeneralSection } from "./sections/general/play-settings-general-section";
import { PlaySettingsRulesSection } from "./sections/rules/play-settings-rules-section";
import { PlaySettingsTagsSection } from "./sections/tags/play-settings-tags-section";
import { PlaySettingsTrackingSection } from "./sections/tracking/play-settings-tracking-section";
import type { MainlinePlaySettingsData } from "./types";

const sections: { href: `#${string}`; label: string }[] = [
  { href: "#general", label: "General" },
  { href: "#tracking", label: "Tracking" },
  { href: "#rules", label: "Challenge rules" },
  { href: "#tags", label: "Tags" },
  { href: "#archive", label: "Archive or delete" },
];

/*
 * Play settings (v3 `settings`): a quiet form in five cards, with a side
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
    <div className="grid min-w-0 items-start gap-6 lg:grid-cols-[200px_minmax(0,1fr)] lg:gap-8">
      <SettingsSectionNav sections={sections} />
      <div className="grid min-w-0 gap-6 [&>section]:scroll-mt-[calc(var(--play-dock-offset,0px)+1rem)]">
        <PlaySettingsGeneralSection
          key={`general:${JSON.stringify(data.general)}`}
          data={data}
          playId={playId}
        />
        <PlaySettingsTrackingSection
          key={`tracking:${data.selectedExpansionIds.join()}`}
          data={data}
          playId={playId}
        />
        <PlaySettingsRulesSection
          key={`rules:${JSON.stringify(data.selectedRules)}`}
          data={data}
          playId={playId}
        />
        <PlaySettingsTagsSection
          key={`tags:${data.selectedTagIds.join()}`}
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
