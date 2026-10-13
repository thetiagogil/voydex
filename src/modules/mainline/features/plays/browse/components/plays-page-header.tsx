import { getPlayLibraryDescription } from "@/modules/mainline/features/plays/browse/play-browse-display";
import { NewPlayTrigger } from "@/modules/mainline/features/plays/shared/components/new-play-trigger";
import type { PlayBrowseItem } from "@/modules/mainline/features/plays/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PageHeader } from "@/shared/components/page-header";
import { buttonVariants } from "@/shared/components/ui/button";

type PlaysPageHeaderProps = {
  plays: PlayBrowseItem[];
};

/*
 * The library at a glance: how many Plays and how much time they hold, and
 * New Play, the page's main button. An empty library offers its own start.
 */
export const PlaysPageHeader = ({ plays }: PlaysPageHeaderProps) => {
  return (
    <PageHeader
      title="Plays"
      description={getPlayLibraryDescription(plays)}
      action={
        plays.length ? (
          <NewPlayTrigger className={buttonVariants()}>
            <AppIcon icon={appIcons.actions.create} inline="start" />
            New Play
          </NewPlayTrigger>
        ) : null
      }
    />
  );
};
