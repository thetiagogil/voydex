import Link from "next/link";
import { appRoutes } from "@/config/routes";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type PlayQuickActionsProps = {
  playId: string;
};

export const PlayQuickActions = ({ playId }: PlayQuickActionsProps) => {
  return (
    <DropdownMenu>
      <DropdownMenuTrigger render={<Button variant="outline" />}>
        Quick actions
        <AppIcon icon={appIcons.actions.expand} inline="end" />
      </DropdownMenuTrigger>
      <DropdownMenuContent align="end" className="w-52">
        <DropdownMenuGroup>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayTeam(playId)} />}
          >
            <AppIcon icon={appIcons.product.team} />
            Open team
          </DropdownMenuItem>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayStory(playId)} />}
          >
            <AppIcon icon={appIcons.views.mainline.story} />
            Open story
          </DropdownMenuItem>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayPokedex(playId)} />}
          >
            <AppIcon icon={appIcons.views.mainline.pokedex} />
            Open Pokédex
          </DropdownMenuItem>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayCollectibles(playId)} />}
          >
            <AppIcon icon={appIcons.views.mainline.collectibles} />
            Open collectibles
          </DropdownMenuItem>
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
