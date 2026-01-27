import { DropdownMenuGroup } from "@radix-ui/react-dropdown-menu";
import { ClipboardCheck, Gamepad2, House, Menu } from "lucide-react";
import Link from "next/link";
import { Button } from "../ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "../ui/dropdown-menu";

interface PageNavigationMenuProps {
  links: { name: string; href: string }[];
}

export const PageNavigationMenu = ({ links }: PageNavigationMenuProps) => {
  return (
    <DropdownMenu>
      <DropdownMenuTrigger asChild>
        <Button variant="outline-primary" size="icon" className="rounded-full">
          <Menu />
        </Button>
      </DropdownMenuTrigger>

      <DropdownMenuContent align="end" className="w-48">
        <DropdownMenuGroup>
          <DropdownMenuItem asChild>
            <Link href="/adventures">
              <House className="h-4 w-4" />
              Adventures
            </Link>
          </DropdownMenuItem>

          <DropdownMenuItem asChild>
            <Link href="/plays">
              <Gamepad2 className="h-4 w-4" />
              Plays
            </Link>
          </DropdownMenuItem>

          <DropdownMenuItem asChild>
            <Link href="/collection">
              <ClipboardCheck className="h-4 w-4" />
              Collection
            </Link>
          </DropdownMenuItem>
        </DropdownMenuGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
