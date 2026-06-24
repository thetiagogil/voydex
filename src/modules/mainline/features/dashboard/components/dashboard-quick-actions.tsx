import Link from "next/link";
import {
  BookOpenCheckIcon,
  PlusIcon,
  RouteIcon,
  type LucideIcon,
} from "lucide-react";

import { appRoutes } from "@/config/routes";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type QuickActionProps = {
  children: React.ReactNode;
  href: string;
  icon: LucideIcon;
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
      <Icon data-icon="inline-start" />
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
          icon={PlusIcon}
          variant="default"
        >
          Create a play
        </QuickAction>
        <QuickAction href={appRoutes.mainlinePlays} icon={RouteIcon}>
          Open plays
        </QuickAction>
        <QuickAction href={appRoutes.codexPokemon} icon={BookOpenCheckIcon}>
          Browse Codex
        </QuickAction>
      </CardContent>
    </Card>
  );
};
