"use client";

import { FieldWrapper } from "@/components/shared/field-wrapper";
import { Button } from "@/components/ui/button";
import { useSignup } from "@/hooks/useAuth";
import { toastPromise } from "@/lib/utils/toast-promise";
import { zodResolver } from "@hookform/resolvers/zod";
import { useRouter } from "next/navigation";
import { useForm } from "react-hook-form";
import { FieldGroup, FieldSet } from "../ui/field";
import { Input } from "../ui/input";
import { signupSchema, type SignupFormValues } from "./schemas/auth-schemas";

export const SignupFormContent = () => {
  const router = useRouter();
  const { mutateAsync: signup, isPending } = useSignup();

  const {
    register,
    handleSubmit,
    reset,
    setError,
    formState: { errors },
  } = useForm<SignupFormValues>({
    resolver: zodResolver(signupSchema),
    defaultValues: { email: "", password: "", confirmPassword: "" },
  });

  const onSubmit = async (data: SignupFormValues) => {
    try {
      const authData = { email: data.email, password: data.password };

      await toastPromise(signup(authData), {
        loading: "Logging you in…",
        success: "Sign in successful!",
        error: (err) => err?.message || "Login failed",
      });
      reset();
      router.push("/gen");
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
              placeholder="********"
              {...register("password")}
            />
          </FieldWrapper>

          <FieldWrapper
            id="confirmPassword"
            label="Confirm Password"
            error={errors.confirmPassword?.message}
          >
            <Input
              id="confirmPassword"
              type="password"
              placeholder="********"
              {...register("confirmPassword")}
            />
          </FieldWrapper>
        </FieldGroup>
      </FieldSet>

      <Button type="submit" className="w-full" disabled={isPending}>
        {isPending ? "Creating account..." : "Create Account"}
      </Button>

      <div className="text-center text-sm">
        <span>
          Already have an account?{" "}
          <Button
            type="button"
            variant="link"
            className="p-0 h-auto font-normal"
            onClick={() => router.push("/auth/login")}
          >
            Log in
          </Button>
        </span>
      </div>
    </form>
  );
};
