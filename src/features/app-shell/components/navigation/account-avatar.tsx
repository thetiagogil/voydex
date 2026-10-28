import type { ComponentProps } from "react";

import type { SignedInAccount } from "@/features/app-shell/types";
import { getAccountInitial } from "@/features/app-shell/utils/account-display";
import {
  Avatar,
  AvatarFallback,
  AvatarImage,
} from "@/shared/components/ui/avatar";

/*
 * Your icon on the bars: the Pokémon you picked, or your initial in your
 * trainer colour until you pick one (and while its picture loads or can't).
 */
export const AccountAvatar = ({
  account,
  fallbackClassName,
  size,
}: {
  account: SignedInAccount;
  fallbackClassName?: string;
  size?: ComponentProps<typeof Avatar>["size"];
}) => (
  <Avatar size={size} aria-hidden>
    {account.icon?.url ? <AvatarImage src={account.icon.url} alt="" /> : null}
    <AvatarFallback className={fallbackClassName}>
      {getAccountInitial(account)}
    </AvatarFallback>
  </Avatar>
);
