import { DropdownMenuGroup } from "@radix-ui/react-dropdown-menu";
import {
  Cat,
  Info,
  LogIn,
  LogOut,
  Settings,
  User,
  UserIcon,
  UserPlus,
} from "lucide-react";
import Link from "next/link";
import { Badge } from "../ui/badge";
import { Button } from "../ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "../ui/dropdown-menu";

interface PageNavbarProfileProps {
  isFetching: boolean;
  isAuth: boolean | null;
  handleLogout: () => void;
}

export const PageNavbarProfile = ({
  isFetching,
  isAuth,
  handleLogout,
}: PageNavbarProfileProps) => {
  return (
    <DropdownMenu>
      <DropdownMenuTrigger asChild>
        <Button variant="outline-primary" size="icon" className="rounded-full">
          <User />
        </Button>
      </DropdownMenuTrigger>

      <DropdownMenuContent align="end" className="w-48">
        {!isFetching && !isAuth && (
          <DropdownMenuGroup>
            <DropdownMenuItem asChild>
              <Link href="/auth/login">
                <LogIn className="h-4 w-4" />
                Log in
              </Link>
            </DropdownMenuItem>

            <DropdownMenuItem asChild>
              <Link href="/auth/signup">
                <UserPlus className="h-4 w-4" />
                Sign up
              </Link>
            </DropdownMenuItem>
          </DropdownMenuGroup>
        )}

        {!isFetching && isAuth && (
          <DropdownMenuGroup>
            <DropdownMenuItem asChild disabled>
              <Link href="/profile" className="flex items-center gap-2">
                <UserIcon className="h-4 w-4" />
                <span className="grow truncate">Profile</span>
                <Badge variant="outline">Soon</Badge>
              </Link>
            </DropdownMenuItem>

            <DropdownMenuItem asChild disabled>
              <Link href="/settings" className="flex items-center gap-2">
                <Settings className="h-4 w-4" />
                <span className="grow truncate">Settings</span>
                <Badge variant="outline">Soon</Badge>
              </Link>
            </DropdownMenuItem>
          </DropdownMenuGroup>
        )}

        <DropdownMenuSeparator />

        <DropdownMenuGroup>
          <DropdownMenuItem asChild disabled>
            <Link href="/intro" className="flex items-center gap-2">
              <Cat className="h-4 w-4" />
              <span className="grow truncate">Pokédex</span>
              <Badge variant="outline">Soon</Badge>
            </Link>
          </DropdownMenuItem>

          <DropdownMenuItem asChild disabled>
            <Link href="/intro" className="flex items-center gap-2">
              <Info className="h-4 w-4" />
              <span className="grow truncate">Learn more</span>
              <Badge variant="outline">Soon</Badge>
            </Link>
          </DropdownMenuItem>
        </DropdownMenuGroup>

        {!isFetching && isAuth && (
          <>
            <DropdownMenuSeparator />

            <DropdownMenuGroup>
              <DropdownMenuItem
                className="hover:bg-destructive/20 focus:bg-destructive/20"
                onClick={() => {
                  handleLogout();
                }}
              >
                <LogOut className="text-destructive h-4 w-4" />
                <span className="text-destructive">Log out</span>
              </DropdownMenuItem>
            </DropdownMenuGroup>
          </>
        )}
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
