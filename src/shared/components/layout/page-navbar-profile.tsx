import { Icon } from "@/shared/components/icon";
import { DropdownMenuGroup } from "@radix-ui/react-dropdown-menu";
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

type PageNavbarProfileProps = {
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
        <Button size="icon" className="rounded-full">
          <Icon type="user" />
        </Button>
      </DropdownMenuTrigger>

      <DropdownMenuContent align="end" className="w-48">
        {!isFetching && !isAuth && (
          <DropdownMenuGroup>
            <DropdownMenuItem asChild>
              <Link href="/auth/login">
                <Icon type="login" />
                Log in
              </Link>
            </DropdownMenuItem>

            <DropdownMenuItem asChild>
              <Link href="/auth/signup">
                <Icon type="signup" />
                Sign up
              </Link>
            </DropdownMenuItem>
          </DropdownMenuGroup>
        )}

        {!isFetching && isAuth && (
          <DropdownMenuGroup>
            <DropdownMenuItem asChild disabled>
              <Link href="/profile" className="flex items-center gap-2">
                <Icon type="user" />
                <span className="grow truncate">Profile</span>
                <Badge variant="outline">Soon</Badge>
              </Link>
            </DropdownMenuItem>

            <DropdownMenuItem asChild disabled>
              <Link href="/settings" className="flex items-center gap-2">
                <Icon type="settings" />
                <span className="grow truncate">Settings</span>
                <Badge variant="outline">Soon</Badge>
              </Link>
            </DropdownMenuItem>
          </DropdownMenuGroup>
        )}

        <DropdownMenuSeparator />

        <DropdownMenuGroup>
          <DropdownMenuItem asChild disabled>
            <Link href="/pokedex" className="flex items-center gap-2">
              <Icon type="pokedex" />
              <span className="grow truncate">Pokédex</span>
              <Badge variant="outline">Soon</Badge>
            </Link>
          </DropdownMenuItem>

          <DropdownMenuItem asChild disabled>
            <Link href="/intro" className="flex items-center gap-2">
              <Icon type="intro" />
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
                <Icon type="logout" className="text-destructive" />
                <span className="text-destructive">Log out</span>
              </DropdownMenuItem>
            </DropdownMenuGroup>
          </>
        )}
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
