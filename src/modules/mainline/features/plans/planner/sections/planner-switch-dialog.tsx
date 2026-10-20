"use client";

import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import {
  AlertDialog,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
} from "@/shared/components/ui/alert-dialog";
import { Button } from "@/shared/components/ui/button";

/* A planned Pokémon as the switch dialog lists it. */
export type PlannerSwitchPokemon = {
  imageUrl: string | null;
  key: string;
  /* What it loses, such as "Ability · 2 moves"; none when it leaves. */
  lost?: string;
  name: string;
  typeSlug: string | null;
};

const SwitchList = ({
  pokemon,
  title,
}: {
  pokemon: PlannerSwitchPokemon[];
  title: string;
}) => (
  <section aria-label={title} className="grid gap-2">
    <p className="text-ink-2 text-13 font-bold">{title}</p>
    <ul className="bg-surface-2 grid gap-1 rounded-xl p-2">
      {pokemon.map((entry) => (
        <li
          key={entry.key}
          className="flex min-w-0 items-center gap-3 px-1 py-1"
        >
          <PokemonAvatar
            decorative
            className="size-10 shrink-0"
            imageUrl={entry.imageUrl}
            name={entry.name}
            typeSlug={entry.typeSlug}
          />
          <span className="min-w-0">
            <span className="text-ink text-15 block truncate font-extrabold">
              {entry.name}
            </span>
            {entry.lost ? (
              <span className="text-ink-2 text-13 block font-semibold">
                {entry.lost}
              </span>
            ) : null}
          </span>
        </li>
      ))}
    </ul>
  </section>
);

/*
 * Asks before a game switch that would change the team: the Pokémon the new
 * game doesn't have, which leave, and the ones that lose part of their build
 * (an ability, item, nature or move the game doesn't offer them), each with
 * its picture. A switch that changes nothing happens at once.
 */
export const PlannerSwitchDialog = ({
  changed,
  onConfirm,
  onOpenChange,
  open,
  removed,
  versionGroupName,
}: {
  changed: PlannerSwitchPokemon[];
  onConfirm: () => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  removed: PlannerSwitchPokemon[];
  versionGroupName: string;
}) => (
  <AlertDialog open={open} onOpenChange={onOpenChange}>
    <AlertDialogContent>
      <AlertDialogHeader>
        <AlertDialogTitle>Switch game?</AlertDialogTitle>
        <AlertDialogDescription>
          Not everything on this team is in {versionGroupName}.
        </AlertDialogDescription>
      </AlertDialogHeader>
      <div className="grid gap-4">
        {removed.length ? (
          <SwitchList pokemon={removed} title="Leaves the team" />
        ) : null}
        {changed.length ? (
          <SwitchList pokemon={changed} title="Loses part of its build" />
        ) : null}
      </div>
      <AlertDialogFooter>
        <AlertDialogCancel>Keep this game</AlertDialogCancel>
        <Button type="button" onClick={onConfirm}>
          Switch game
        </Button>
      </AlertDialogFooter>
    </AlertDialogContent>
  </AlertDialog>
);
