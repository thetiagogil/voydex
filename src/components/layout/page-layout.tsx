import { PageBreadcrumbsNavigation } from "@/components/layout/page-breadcrumbs-navigation";
import { type PageContainerWidth } from "@/lib/constants/layout";
import { ReactNode } from "react";
import { Spinner } from "../ui/spinner";
import { PageContainer } from "./page-container";
import { PageNavigation } from "./page-navigation";

interface PageLayoutProps {
  children: ReactNode;
  className?: string;
  width?: PageContainerWidth;
  showNavigation?: boolean;
  isLoading?: boolean;
}

export const PageLayout = ({
  children,
  className,
  width = "lg",
  showNavigation = true,
  isLoading = false,
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
          {isLoading ? (
            <div className="flex items-center justify-center">
              <Spinner className="size-6" />
            </div>
          ) : (
            <>
              <PageBreadcrumbsNavigation />
              {children}
            </>
          )}
        </PageContainer>
      </main>
    </div>
  );
};
