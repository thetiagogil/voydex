import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";

type QuickActionProps = {
  children: React.ReactNode;
  href: string;
  icon: AppIconComponent;
  variant?: "default" | "outline";
};

const QuickAction = ({
  children,
  href,
  icon: Icon,
  variant = "outline",
}: QuickActionProps) => {
  return (
    <Button
      render={<Link href={href} />}
      nativeButton={false}
      variant={variant}
      className="justify-start"
    >
      <AppIcon icon={Icon} inline="start" />
      {children}
    </Button>
  );
};

export const DashboardQuickActions = () => {
  return (
    <Card className="bg-card/82">
      <CardHeader>
        <CardTitle>Quick actions</CardTitle>
        <CardDescription>
          Direct paths for common Mainline work.
        </CardDescription>
      </CardHeader>
      <CardContent className="grid gap-3">
        <QuickAction
          href={appRoutes.mainlineNewPlay}
          icon={appIcons.actions.create}
          variant="default"
        >
          Create a play
        </QuickAction>
        <QuickAction
          href={appRoutes.mainlinePlays}
          icon={appIcons.views.mainline.plays}
        >
          Open plays
        </QuickAction>
        <QuickAction
          href={appRoutes.codexPokemon}
          icon={appIcons.actions.browseCodex}
        >
          Browse Codex
        </QuickAction>
      </CardContent>
    </Card>
  );
};
