import { toast } from "sonner";

interface ToastPromiseOptions {
  loading: string;
  success: string | ((data?: any) => string);
  error: string | ((err?: any) => string);
}

// Enhanced toast.promise that works like Supabase's loading states
// Shows loading → success/error transition in the same toast

export async function toastPromise<T>(
  promise: Promise<T>,
  options: ToastPromiseOptions
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
    const errorMessage =
      typeof options.error === "function" ? options.error(err) : options.error;

    toast.error(errorMessage, { id: loadingToast });
    throw err;
  }
}
