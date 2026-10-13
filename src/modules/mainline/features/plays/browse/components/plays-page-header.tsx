import { getPlayLibraryDescription } from "@/modules/mainline/features/plays/browse/play-browse-display";
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/browse/types";
import { PageHeader } from "@/shared/components/page-header";

type PlaysPageHeaderProps = {
  plays: PlayBrowseItem[];
};

/* The library at a glance: how many Plays and how much time they hold. */
export const PlaysPageHeader = ({ plays }: PlaysPageHeaderProps) => {
  return (
    <PageHeader title="Plays" description={getPlayLibraryDescription(plays)} />
  );
};
