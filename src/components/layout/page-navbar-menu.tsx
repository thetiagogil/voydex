import { DropdownMenuGroup } from "@radix-ui/react-dropdown-menu";
import Link from "next/link";
import { Icon } from "../shared/icon";
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
            <Link href="/dashboard">
              <Icon type="adventure" />
              Dashboard
            </Link>
          </DropdownMenuItem>

          <DropdownMenuItem asChild>
            <Link href="/plays">
              <Icon type="play" />
              Plays
            </Link>
          </DropdownMenuItem>

          <DropdownMenuItem asChild>
            <Link href="/collection">
              <Icon type="collection" />
              Collection
            </Link>
          </DropdownMenuItem>
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
