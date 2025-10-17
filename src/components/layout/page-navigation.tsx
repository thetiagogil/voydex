"use client";

import { useClaims, useLogout } from "@/hooks/useAuth";
import { PAGE_CONTAINER_WIDTH } from "@/lib/constants/layout";
import { toastPromise } from "@/lib/utils/toast-promise";
import { DropdownMenuGroup } from "@radix-ui/react-dropdown-menu";
import {
  Info,
  LogIn,
  LogOut,
  Settings,
  User,
  UserIcon,
  UserPlus,
} from "lucide-react";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { Logo } from "../shared/logo";
import { Badge } from "../ui/badge";
import { Button } from "../ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "../ui/dropdown-menu";

type PageNavigationProps = {
  className?: string;
};

export function PageNavigation({ className = "" }: PageNavigationProps) {
  const pathname = usePathname();
  const router = useRouter();
  const { data: isAuth, isFetching } = useClaims();
  const { mutateAsync: logout } = useLogout();

  const handleLogout = async () => {
    try {
      await toastPromise(logout(), {
        loading: "Logging you out…",
        success: "Log out successful!",
        error: (err) => err?.message || "Logout failed",
      });

      router.push("/");
    } catch (err) {
      console.error("Logout error:", err);
    }
  };

  const navLinks = [
    ...(isAuth ? [{ name: "Dashboard", href: "/dashboard" }] : []),
    { name: "Pokédex", href: "/pokedex" },
  ];

  const detectedPage = navLinks.find((link) =>
    link.href === "/" ? pathname === "/" : pathname.startsWith(link.href)
  )?.name;

  return (
    <>
      <nav className={`px-auto border-b border-border ${className}`}>
        <div
          className={`${PAGE_CONTAINER_WIDTH.lg} mx-auto flex h-14 items-center justify-between px-6`}
        >
          <div className="flex items-center space-x-12">
            <Link href="/" className="flex-shrink-0">
              <Logo showText size="sm" />
            </Link>

            <div className="flex items-center space-x-4">
              {navLinks.map((link) => (
                <Link
                  key={link.name}
                  href={link.href}
                  className={`font-medium transition-colors ${
                    detectedPage === link.name
                      ? "text-primary"
                      : "hover:text-primary/80"
                  }`}
                >
                  {link.name}
                </Link>
              ))}
            </div>
          </div>

          <DropdownMenu>
            <DropdownMenuTrigger asChild>
              <Button variant="outline" size="icon" className="rounded-full">
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
                      <LogOut className="h-4 w-4 text-destructive" />
                      <span className="text-destructive">Log out</span>
                    </DropdownMenuItem>
                  </DropdownMenuGroup>
                </>
              )}
            </DropdownMenuContent>
          </DropdownMenu>
        </div>
      </nav>
    </>
  );
}
