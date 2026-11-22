import { Button } from "@/shared/components/ui/button";

/*
 * Log out on this device: the danger outline, inside its form. It only asks
 * (the Log out question does the rest, with its own progress), so it never
 * says it is logging out.
 */
export const SettingsLogOutButton = ({ className }: { className?: string }) => (
  <Button type="submit" variant="destructive" className={className}>
    Log out
  </Button>
);
