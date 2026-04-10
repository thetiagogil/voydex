"use client";

import { FieldWrapper } from "@/components/shared/field-wrapper";
import { Button } from "@/components/ui/button";
import { toastPromise } from "@/lib/utils/toast-promise";
import { useLogin } from "@/shared/hooks/useAuth";
import { zodResolver } from "@hookform/resolvers/zod";
import { useRouter } from "next/navigation";
import { useForm } from "react-hook-form";
import { FieldGroup, FieldSet } from "../ui/field";
import { Input } from "../ui/input";
import { loginSchema, type LoginFormValues } from "./schemas/auth-schemas";

export const LoginFormContent = () => {
  const router = useRouter();
  const { mutateAsync: login, isPending } = useLogin();

  const {
    register,
    handleSubmit,
    reset,
    setError,
    formState: { errors },
  } = useForm<LoginFormValues>({
    resolver: zodResolver(loginSchema),
    defaultValues: { email: "", password: "" },
  });

  const onSubmit = async (data: LoginFormValues) => {
    try {
      await toastPromise(login(data), {
        loading: "Logging you in…",
        success: "Log in successful!",
        error: (err) => err?.message || "Login failed",
      });

      reset();
      router.push("/dashboard");
    } catch (err) {
      const errorMessage =
        err instanceof Error ? err.message : "An error occurred";
      setError("root", { message: errorMessage });
    }
  };

  return (
    <form onSubmit={handleSubmit(onSubmit)} className="space-y-4">
      <FieldSet>
        <FieldGroup>
          <FieldWrapper id="email" label="Email" error={errors.email?.message}>
            <Input
              id="email"
              type="email"
              placeholder="your@email.com"
              {...register("email")}
            />
          </FieldWrapper>

          <FieldWrapper
            id="password"
            label="Password"
            error={errors.password?.message}
          >
            <Input
              id="password"
              type="password"
              placeholder="••••••"
              {...register("password")}
            />
          </FieldWrapper>
        </FieldGroup>
      </FieldSet>

      <Button type="submit" className="w-full" disabled={isPending}>
        {isPending ? "Logging in..." : "Log In"}
      </Button>

      <div className="text-center text-sm">
        <span>
          Don&apos;t have an account?{" "}
          <Button
            type="button"
            variant="link"
            className="h-auto p-0 font-normal"
            onClick={() => router.push("/auth/signup")}
          >
            Sign up
          </Button>
        </span>
      </div>
    </form>
  );
};
