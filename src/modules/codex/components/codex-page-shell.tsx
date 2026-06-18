import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import { PageHeader } from "@/shared/components/app/page-header";
import { buttonVariants } from "@/shared/components/ui/button";

const codexNavItems = [
  {
    href: appRoutes.codexPokemon,
    label: "Pokedex",
  },
  {
    href: appRoutes.codexGames,
    label: "Games",
  },
  {
    href: appRoutes.codexGenerations,
    label: "Generations",
  },
] as const;

type CodexPageShellProps = {
  children: React.ReactNode;
  description?: string;
  title: string;
};

export function CodexPageShell({
  children,
  description,
  title,
}: CodexPageShellProps) {
  return (
    <div className="flex flex-col gap-6">
      <div className="flex flex-col gap-4">
        <PageHeader title={title} description={description} />
        <nav className="flex flex-wrap items-center gap-2">
          {codexNavItems.map((item) => (
            <Link
              key={item.href}
              href={item.href}
              className={cn(
                buttonVariants({ variant: "outline", size: "sm" }),
                "bg-background/60",
              )}
            >
              {item.label}
            </Link>
          ))}
        </nav>
      </div>
      {children}
    </div>
  );
}
