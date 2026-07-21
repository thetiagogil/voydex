import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { Button } from "@/shared/components/ui/button";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type HomeAppEntryButtonProps = {
  isAuthenticated: boolean;
};

export const HomeAppEntryButton = ({
  isAuthenticated,
}: HomeAppEntryButtonProps) => {
  const href = isAuthenticated ? appRoutes.appEntry : appRoutes.login;

  return (
    <Button
      render={<Link href={href} />}
      nativeButton={false}
      size="lg"
      className="min-w-0 sm:min-w-40"
    >
      <AppIcon icon={appIcons.actions.enterApp} inline="start" aria-hidden />
      Enter the app
    </Button>
  );
};
