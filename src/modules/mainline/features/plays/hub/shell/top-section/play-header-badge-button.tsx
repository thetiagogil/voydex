import type { ReactNode } from "react";

import {
  StatusBadge,
  type StatusBadgeTone,
} from "@/shared/components/status-badge";

/*
 * A badge on the Play's head that opens something (the status, the rules
 * broken): a StatusBadge on the band, as a button. An icon of its own
 * stands in for the dot.
 */
export const PlayHeaderBadgeButton = ({
  children,
  dot,
  onClick,
  tone,
}: {
  children: ReactNode;
  dot?: boolean;
  onClick: () => void;
  tone?: StatusBadgeTone;
}) => (
  <StatusBadge
    ground="band"
    size="md"
    tone={tone}
    dot={dot}
    className="cursor-pointer hover:brightness-95"
    render={<button type="button" aria-haspopup="dialog" onClick={onClick} />}
  >
    {children}
  </StatusBadge>
);
