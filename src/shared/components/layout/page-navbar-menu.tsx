import { Icon } from "@/shared/components/icon";
import {
  getAdventuresRoute,
  getCollectionRoute,
  getDashboardRoute,
} from "@/shared/constants/routes";
import { DropdownMenuGroup } from "@radix-ui/react-dropdown-menu";
import Link from "next/link";
import { Button } from "../ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "../ui/dropdown-menu";

export const PageNavbarMenu = () => {
  return (
    <DropdownMenu>
      <DropdownMenuTrigger asChild>
        <Button variant="outline" size="icon" className="rounded-full">
          <Icon type="menu" />
        </Button>
      </DropdownMenuTrigger>

      <DropdownMenuContent align="end" className="w-48">
        <DropdownMenuGroup>
          <DropdownMenuItem asChild>
            <Link href={getDashboardRoute()}>
              <Icon type="adventure" />
              Dashboard
            </Link>
          </DropdownMenuItem>

          <DropdownMenuItem asChild>
            <Link href={getAdventuresRoute()}>
              <Icon type="play" />
              Adventures
            </Link>
          </DropdownMenuItem>

          <DropdownMenuItem asChild>
            <Link href={getCollectionRoute()}>
              <Icon type="collection" />
              Collection
            </Link>
          </DropdownMenuItem>
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
