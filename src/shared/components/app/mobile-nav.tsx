"use client";

import { MenuIcon } from "lucide-react";
import Link from "next/link";
import { usePathname } from "next/navigation";

import {
  getActiveModuleKey,
  moduleKeys,
  modules,
  type ModuleKey,
} from "@/config/modules";
import { cn } from "@/lib/utils";
import { Logo } from "@/shared/components/app/logo";
import { setActiveModuleCookie } from "@/shared/components/app/module-cookie";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/shared/components/ui/sheet";

type MobileNavProps = {
  activeModuleKey: ModuleKey;
};

export function MobileNav({ activeModuleKey }: MobileNavProps) {
  const pathname = usePathname();
  const currentModuleKey = getActiveModuleKey({
    cookieValue: activeModuleKey,
    pathname,
  });
  const currentModule = modules[currentModuleKey];

  return (
    <Sheet>
      <SheetTrigger asChild>
        <Button variant="ghost" size="icon">
          <MenuIcon aria-hidden />
          <span className="sr-only">Open navigation</span>
        </Button>
      </SheetTrigger>
      <SheetContent side="left" className="w-80">
        <SheetHeader>
          <SheetTitle>
            <Logo />
          </SheetTitle>
          <SheetDescription>Voydex navigation</SheetDescription>
        </SheetHeader>
        <div className="flex flex-col gap-5 px-4">
          <nav className="flex flex-col gap-1" aria-label="Modules">
            <p className="text-muted-foreground px-2 text-xs font-medium">
              Modules
            </p>
            {moduleKeys.map((moduleKey) => {
              const moduleConfig = modules[moduleKey];
              const isActive = moduleKey === currentModuleKey;

              return (
                <Link
                  key={moduleKey}
                  href={moduleConfig.defaultHref}
                  onClick={() => setActiveModuleCookie(moduleKey)}
                  className={cn(
                    buttonVariants({
                      variant: isActive ? "secondary" : "ghost",
                    }),
                    "justify-start",
                    isActive && "text-primary",
                  )}
                >
                  {moduleConfig.label}
                </Link>
              );
            })}
          </nav>
          <nav
            className="flex flex-col gap-1"
            aria-label={`${currentModule.label} navigation`}
          >
            <p className="text-muted-foreground px-2 text-xs font-medium">
              {currentModule.label}
            </p>
            {currentModule.views.map((item) => {
              const isActive =
                pathname === item.href || pathname.startsWith(`${item.href}/`);

              return (
                <Link
                  key={item.href}
                  href={item.href}
                  className={cn(
                    buttonVariants({
                      variant: isActive ? "secondary" : "ghost",
                    }),
                    "justify-start",
                    isActive && "text-primary",
                  )}
                >
                  {item.label}
                </Link>
              );
            })}
          </nav>
        </div>
      </SheetContent>
    </Sheet>
  );
}
