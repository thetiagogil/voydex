import { appRoutes } from "@/config/routes";
import { LibraryNewButton } from "@/modules/mainline/features/library/components/library-new-button";
import { LibraryBrowser } from "@/modules/mainline/features/library/sections/library-browser";
import type {
  LibraryPageData,
  LibraryTab,
} from "@/modules/mainline/features/library/types";
import { PageHeader } from "@/shared/components/page-header";
import { SegmentedControl } from "@/shared/components/segmented-control";

/*
 * Library: the challenge rules and tags you keep for every Play and Plan,
 * in one place to make, rename and delete them. A Play or Plan shows only
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
          description="Your rules and tags, ready for every Play and Plan. Fix a name here and it changes everywhere."
          action={
            tab === "rules" ? (
              <LibraryNewButton noun="rule" kinds={data.kinds} />
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
