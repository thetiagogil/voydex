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
        <Button
          variant="outline-secondary"
          size="icon"
          className="rounded-full"
        >
          <Icon name="menu" />
        </Button>
      </DropdownMenuTrigger>

      <DropdownMenuContent align="end" className="w-48">
        <DropdownMenuGroup>
          <DropdownMenuItem asChild>
            <Link href="/adventures">
              <Icon name="adventure" />
              Adventures
            </Link>
          </DropdownMenuItem>

          <DropdownMenuItem asChild>
            <Link href="/plays">
              <Icon name="play" />
              Plays
            </Link>
          </DropdownMenuItem>

          <DropdownMenuItem asChild>
            <Link href="/collection">
              <Icon name="collection" />
              Collection
            </Link>
          </DropdownMenuItem>
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
