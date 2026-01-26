import {
  type PageContainerWidth,
  PAGE_CONTAINER_WIDTH,
} from "@/lib/constants/layout";
import { ReactNode } from "react";

interface PageContainerProps {
  children: ReactNode;
  width?: PageContainerWidth;
  className?: string;
}

export const PageContainer = ({
  children,
  width = "xl",
  className = "",
}: PageContainerProps) => {
  return (
    <div
      className={`${PAGE_CONTAINER_WIDTH[width]} mx-auto px-4 py-6 ${className}`}
    >
      {children}
    </div>
  );
};
