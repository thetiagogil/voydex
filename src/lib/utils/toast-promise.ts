import { toast } from "sonner";

interface ToastPromiseOptions<T = unknown> {
  loading: string;
  success: string | ((data?: T) => string);
  error: string | ((err?: Error) => string);
}

// Enhanced toast.promise that works like Supabase's loading states
// Shows loading → success/error transition in the same toast

export async function toastPromise<T>(
  promise: Promise<T>,
  options: ToastPromiseOptions<T>
): Promise<T> {
  const loadingToast = toast.loading(options.loading);

  try {
    const result = await promise;

    const successMessage =
      typeof options.success === "function"
        ? options.success(result)
        : options.success;

    toast.success(successMessage, { id: loadingToast });
    return result;
  } catch (err) {
    const error = err instanceof Error ? err : new Error(String(err));
    const errorMessage =
      typeof options.error === "function"
        ? options.error(error)
        : options.error;

    toast.error(errorMessage, { id: loadingToast });
    throw err;
  }
}
