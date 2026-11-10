"use client";

import { useRef, useState, useTransition } from "react";
import { toast } from "sonner";

import { setFavouritePokemonAction } from "@/modules/mainline/features/collection/client/favourite-pokemon-action";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { IconTip } from "@/shared/components/icon-tip";
import { Button } from "@/shared/components/ui/button";

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
  /*
   * One save at a time, so the heart and the database never disagree. A ref,
   * not `isPending`: an older toast's Undo keeps the render it came from.
   */
  const saving = useRef(false);

  const save = (next: boolean, { undoable }: { undoable: boolean }) => {
    if (saving.current) return;

    saving.current = true;
    setFavourite(next);
    startTransition(async () => {
      const result = await setFavouritePokemonAction({
        favourite: next,
        formId,
        speciesId,
      }).finally(() => {
        saving.current = false;
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
