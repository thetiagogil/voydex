import { appRoutes } from "@/config/routes";
import { NewPlayTrigger } from "@/modules/mainline/features/plays/shared/components/new-play-trigger";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { EmptyState } from "@/shared/components/empty-state";
import { Link } from "@/shared/components/link";
import { buttonVariants } from "@/shared/components/ui/button";

const art = {
  name: "Pikachu",
  url: getPokemonFormImageUrl({ name: "Pikachu", slug: "pikachu" }),
};

/*
 * The start of everything, wherever a trainer with no Play lands (Home, the
 * Plays list): one card with the main action, Start a Play, which opens New
 * Play over the page, and the Codex for anyone who only wants to look.
 */
export const FirstPlayStart = ({ className }: { className?: string }) => (
  <EmptyState
    headingLevel="h2"
    className={className}
    art={art}
    title="Your first Play starts here"
    description="Pick the game you're playing and meet your partner. Voydex keeps the rest as you go."
    action={
      <>
        <NewPlayTrigger className={buttonVariants()}>
          <AppIcon icon={appIcons.actions.create} inline="start" />
          Start a Play
        </NewPlayTrigger>
        <Link
          href={appRoutes.codexPokemon}
          className={buttonVariants({ variant: "secondary" })}
        >
          <AppIcon icon={appIcons.actions.browseCodex} inline="start" />
          Browse the Codex
        </Link>
      </>
    }
  />
);
