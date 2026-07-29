"use client";

import { Badge } from "@/shared/components/ui/badge";
import { NavigationMenuBar } from "@/shared/components/navigation-menu/navigation-menu-bar";
import { NavigationMenuControlTrigger } from "@/shared/components/navigation-menu/navigation-menu-control";
import { NavigationMenuOption } from "@/shared/components/navigation-menu/navigation-menu-option";
import { NavigationMenuOptionsPanel } from "@/shared/components/navigation-menu/navigation-menu-options-panel";
import { NavigationMenuItem } from "@/shared/components/ui/navigation-menu";
import { cn } from "@/shared/utils/cn";

import type { MainlinePlayPokedexScope } from "../../types";

const formatScopeKind = (kind: string) =>
  kind
    .split("-")
    .map((part) =>
      part.toLocaleLowerCase() === "dlc"
        ? "DLC"
        : part.charAt(0).toLocaleUpperCase() + part.slice(1),
    )
    .join(" ");

const getEntryCountLabel = (scope: MainlinePlayPokedexScope) =>
  `${scope.entries.length.toLocaleString()} Pokémon`;

const ScopeIdentity = ({
  scope,
  showKind,
}: {
  scope: MainlinePlayPokedexScope;
  showKind: boolean;
}) => {
  return (
    <span className="flex min-w-0 flex-wrap items-center gap-x-2 gap-y-1 text-left">
      <span className="text-primary truncate font-serif text-lg leading-6 font-semibold">
        {scope.name}
      </span>
      {showKind ? (
        <Badge variant="outline" className="shrink-0">
          {formatScopeKind(scope.kind)}
        </Badge>
      ) : null}
    </span>
  );
};

export const PokedexScopeNavigation = ({
  onScopeChange,
  scope,
  scopes,
}: {
  onScopeChange: (scopeId: number) => void;
  scope: MainlinePlayPokedexScope;
  scopes: MainlinePlayPokedexScope[];
}) => {
  if (scopes.length <= 1) {
    return <ScopeIdentity scope={scope} showKind={false} />;
  }

  return (
    <NavigationMenuBar
      align="start"
      aria-label="Pokédex scope"
      className="min-w-0"
    >
      <NavigationMenuItem>
        <NavigationMenuControlTrigger className="h-auto max-w-full border-0 bg-transparent p-0 shadow-none hover:bg-transparent focus:bg-transparent focus-visible:bg-transparent data-open:bg-transparent data-open:hover:bg-transparent data-popup-open:bg-transparent data-popup-open:hover:bg-transparent">
          <ScopeIdentity scope={scope} showKind />
        </NavigationMenuControlTrigger>
        <NavigationMenuOptionsPanel className="w-88">
          {scopes.map((candidate) => (
            <NavigationMenuOption
              key={candidate.id}
              active={candidate.id === scope.id}
              accessibilityLabel={`View ${candidate.name}, ${getEntryCountLabel(candidate)}`}
              className={cn(
                "hover:bg-muted/50 focus:bg-muted/50 data-active:hover:bg-muted/50 data-active:focus:bg-muted/50 bg-transparent text-left data-active:bg-transparent",
                candidate.id === scope.id && "text-primary",
              )}
              description={getEntryCountLabel(candidate)}
              onClick={() => {
                onScopeChange(candidate.id);
              }}
              render={<button type="button" />}
              title={candidate.name}
              titleAccessory={
                <Badge
                  variant="outline"
                  className="px-1.5 py-0 text-[0.6875rem]"
                >
                  {formatScopeKind(candidate.kind)}
                </Badge>
              }
            />
          ))}
        </NavigationMenuOptionsPanel>
      </NavigationMenuItem>
    </NavigationMenuBar>
  );
};
