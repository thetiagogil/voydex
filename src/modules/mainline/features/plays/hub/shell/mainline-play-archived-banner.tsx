import { RestorePlayButton } from "@/modules/mainline/features/plays/shared/components/restore-play-button";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Alert,
  AlertAction,
  AlertDescription,
  AlertTitle,
} from "@/shared/components/ui/alert";

type MainlinePlayArchivedBannerProps = {
  playId: string;
  playName: string;
};

/*
 * A quiet note over an archived Play's pages: it opens and reads as usual,
 * but stays out of Home and the library until restored.
 */
export const MainlinePlayArchivedBanner = ({
  playId,
  playName,
}: MainlinePlayArchivedBannerProps) => (
  <Alert role="status" className="has-data-[slot=alert-action]:pr-32">
    <AppIcon icon={appIcons.product.archived} />
    <AlertTitle>Archived</AlertTitle>
    <AlertDescription>
      Hidden from Home and your list of Plays.
    </AlertDescription>
    <AlertAction className="top-1/2 right-3 -translate-y-1/2">
      <RestorePlayButton playId={playId} playName={playName} />
    </AlertAction>
  </Alert>
);
