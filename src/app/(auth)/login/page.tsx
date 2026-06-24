import { LoginPage } from "@/features/auth/components/login-page";

type LoginRouteProps = {
  searchParams?: Promise<{
    error?: string;
    mode?: string;
    next?: string;
  }>;
};

export default function Page({ searchParams }: LoginRouteProps) {
  return <LoginPage searchParams={searchParams} />;
}
