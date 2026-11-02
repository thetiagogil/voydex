"use client";

import Link from "next/link";
import { useState, useTransition } from "react";
import { toast } from "sonner";

import { setFavouritePokemonAction } from "@/modules/mainline/features/collection/server/favourite-pokemon-action";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { IconTip } from "@/shared/components/icon-tip";
import { Button, buttonVariants } from "@/shared/components/ui/button";

type FavouritePokemonButtonProps = {
  formId: number;
  /* Whether it is a favourite when the page loads. */
  initialFavourite: boolean;
  /* The shown form's name, for the toast: "Hisuian Arcanine". */
  name: string;
  speciesId: number;
};

/* A heart that reads "on" filled, as a pressed toggle. */
const HeartIcon = ({ filled }: { filled: boolean }) => (
  <AppIcon
    icon={appIcons.product.favourite}
    fill={filled ? "currentColor" : "none"}
  />
);

/*
 * The heart on a Codex entry: one tap saves the shown form as a favourite or
 * takes it off straight away, with Undo in the toast. It shows the new state
 * at once and goes back if the save fails.
 */
export const FavouritePokemonButton = ({
  formId,
  initialFavourite,
  name,
  speciesId,
}: FavouritePokemonButtonProps) => {
  const [favourite, setFavourite] = useState(initialFavourite);
  const [isPending, startTransition] = useTransition();

  const save = (next: boolean, { undoable }: { undoable: boolean }) => {
    /* One save at a time, so the last tap is always the one that lands. */
    if (isPending) return;

    setFavourite(next);
    startTransition(async () => {
      const result = await setFavouritePokemonAction({
        favourite: next,
        formId,
        speciesId,
      });

      if (result.status === "error") {
        setFavourite(!next);
        toast.error(result.message);
        return;
      }

      if (undoable) {
        toast.success(
          next
            ? `${name} added to your favourites`
            : `${name} taken off your favourites`,
          {
            action: {
              label: "Undo",
              onClick: () => save(!next, { undoable: false }),
            },
          },
        );
      }
    });
  };

  const label = favourite ? "In your favourites" : "Add to favourites";

  return (
    <IconTip
      label={label}
      trigger={
        <Button
          variant="secondary"
          size="icon"
          aria-label="Favourite"
          aria-pressed={favourite}
          aria-busy={isPending}
          onClick={() => save(!favourite, { undoable: true })}
        >
          <HeartIcon filled={favourite} />
        </Button>
      }
    />
  );
};

/*
 * The heart for a visitor: it asks you to sign in, then brings you back to
 * the entry.
 */
export const FavouritePokemonSignIn = ({ href }: { href: string }) => (
  <IconTip
    label="Sign in to keep favourites"
    trigger={
      <Link
        href={href}
        aria-label="Favourite: sign in to keep favourites"
        className={buttonVariants({ size: "icon", variant: "secondary" })}
      >
        <HeartIcon filled={false} />
      </Link>
    }
  />
);
