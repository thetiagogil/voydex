import { appRoutes } from "@/config/routes";
import { LibraryNewPresetButton } from "@/modules/mainline/features/library/components/library-new-preset-button";
import { LibraryNewButton } from "@/modules/mainline/features/library/components/library-new-button";
import { LibraryBrowser } from "@/modules/mainline/features/library/sections/library-browser";
import type {
  LibraryPageData,
  LibraryTab,
} from "@/modules/mainline/features/library/types";
import { PageHeader } from "@/shared/components/page-header";
import { SegmentedControl } from "@/shared/components/segmented-control";

/*
 * Library: the challenge rules, presets and tags you keep for every Play,
 * in one place to make, rename and delete them. A Play shows only
 * its own and adds more from a picker that links here. Each tab starts
 * with a fresh search.
 */
export const MainlineLibraryPage = ({
  data,
  tab,
}: {
  data: LibraryPageData;
  tab: LibraryTab;
}) => (
  <div className="flex flex-col gap-5 sm:gap-6">
    <LibraryBrowser
      key={tab}
      data={data}
      tab={tab}
      head={
        <PageHeader
          title="Library"
          description="Your rules, presets and tags, ready for every Play. Fix a name here and it changes everywhere."
          action={
            tab === "rules" ? (
              <LibraryNewButton noun="rule" kinds={data.kinds} />
            ) : tab === "presets" ? (
              <LibraryNewPresetButton kinds={data.kinds} rules={data.rules} />
            ) : (
              <LibraryNewButton noun="tag" />
            )
          }
        />
      }
      tabs={
        <SegmentedControl
          ariaLabel="Library sections"
          className="mt-5"
          selectedTone="strong"
          value={tab}
          options={[
            {
              count: data.rules.length,
              href: appRoutes.mainlineLibraryTab("rules"),
              label: "Rules",
              value: "rules",
            },
            {
              count: data.presets.length,
              href: appRoutes.mainlineLibraryTab("presets"),
              label: "Presets",
              value: "presets",
            },
            {
              count: data.tags.length,
              href: appRoutes.mainlineLibraryTab("tags"),
              label: "Tags",
              value: "tags",
            },
          ]}
        />
      }
    />
  </div>
);
