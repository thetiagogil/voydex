import { PageBreadcrumbsNavigation } from "@/components/layout/page-breadcrumbs-navigation";
import { type PageContainerWidth } from "@/lib/constants/layout";
import { ReactNode } from "react";
import { PageContainer } from "./page-container";
import { PageNavigation } from "./page-navigation";

interface PageLayoutProps {
  children: ReactNode;
  className?: string;
  width?: PageContainerWidth;
  showNavigation?: boolean;
}

export const PageLayout = ({
  children,
  className,
  width = "lg",
  showNavigation = true,
}: PageLayoutProps) => {
  return (
    <div className="min-h-screen">
      {showNavigation && (
        <header>
          <PageNavigation />
        </header>
      )}
      <main>
        <PageContainer className={className} width={width}>
          <PageBreadcrumbsNavigation />
          {children}
        </PageContainer>
      </main>
    </div>
  );
};
