import { appRoutes } from "@/config/routes";
import { LibraryRulesSection } from "@/modules/mainline/features/library/sections/library-rules-section";
import { LibraryTagsSection } from "@/modules/mainline/features/library/sections/library-tags-section";
import type {
  LibraryPageData,
  LibraryTab,
} from "@/modules/mainline/features/library/types";
import { PageBand } from "@/shared/components/page-band";
import { PageHeader } from "@/shared/components/page-header";
import { SegmentedControl } from "@/shared/components/segmented-control";

/*
 * Library: the challenge rules and tags you keep for every Play and Plan,
 * in one place to make, rename and delete them. A Play or Plan shows only
 * its own and adds more from a picker that links here.
 */
export const MainlineLibraryPage = ({
  data,
  tab,
}: {
  data: LibraryPageData;
  tab: LibraryTab;
}) => (
  <div className="flex flex-col gap-5 sm:gap-6">
    <PageBand>
      <PageHeader
        title="Library"
        description="Your rules and tags, ready for every Play and Plan. Fix a name here and it changes everywhere."
      />
      <SegmentedControl
        ariaLabel="Library sections"
        className="mt-5"
        variant="segment"
        value={tab}
        options={[
          {
            count: data.rules.length,
            href: appRoutes.mainlineLibraryTab("rules"),
            label: "Rules",
            value: "rules",
          },
          {
            count: data.tags.length,
            href: appRoutes.mainlineLibraryTab("tags"),
            label: "Tags",
            value: "tags",
          },
        ]}
      />
    </PageBand>

    {tab === "rules" ? (
      <LibraryRulesSection kinds={data.kinds} rules={data.rules} />
    ) : (
      <LibraryTagsSection tags={data.tags} />
    )}
  </div>
);
