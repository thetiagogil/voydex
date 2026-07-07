import { buttonVariants } from "@/shared/components/ui/button";
import { ButtonGroup } from "@/shared/components/ui/button-group";

export const TeamModeAction = () => {
  return (
    <ButtonGroup>
      <button
        type="button"
        aria-pressed="true"
        className={buttonVariants({ variant: "secondary", size: "xs" })}
      >
        Active
      </button>
      <button
        type="button"
        disabled
        className={buttonVariants({ variant: "outline", size: "xs" })}
      >
        Reserve
      </button>
    </ButtonGroup>
  );
};
