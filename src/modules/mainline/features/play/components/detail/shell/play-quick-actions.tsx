import Link from "next/link";
import {
  BookOpen,
  ChevronDown,
  ClipboardList,
  Gem,
  UsersRound,
} from "lucide-react";

import { appRoutes } from "@/config/routes";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";

type PlayQuickActionsProps = {
  playId: string;
};

export const PlayQuickActions = ({ playId }: PlayQuickActionsProps) => {
  return (
    <DropdownMenu>
      <DropdownMenuTrigger render={<Button variant="outline" />}>
        Quick actions
        <ChevronDown data-icon="inline-end" />
      </DropdownMenuTrigger>
      <DropdownMenuContent align="end" className="w-52">
        <DropdownMenuGroup>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayTeam(playId)} />}
          >
            <UsersRound />
            Open team
          </DropdownMenuItem>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayStory(playId)} />}
          >
            <BookOpen />
            Open story
          </DropdownMenuItem>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayPokedex(playId)} />}
          >
            <ClipboardList />
            Open Pokedex
          </DropdownMenuItem>
          <DropdownMenuItem
            render={<Link href={appRoutes.mainlinePlayCollectibles(playId)} />}
          >
            <Gem />
            Open collectibles
          </DropdownMenuItem>
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
