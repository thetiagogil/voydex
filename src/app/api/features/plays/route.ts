import { createPlayBodySchema } from "@/features/play/api/schemas";
import { createPlay } from "@/features/play/server/play";
import {
  conflictResponse,
  createdResponse,
  errorResponse,
  isDuplicateKeyError,
  parseJsonBody,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function POST(request: NextRequest) {
  try {
    const parsed = await parseJsonBody(request, createPlayBodySchema);
    if (parsed.error) return parsed.error;

    const { data, error } = await createPlay(parsed.data.gameId, parsed.data.name);

    if (error) {
      if (isDuplicateKeyError(error)) {
        return conflictResponse("A play with this name already exists");
      }

      return errorResponse(error);
    }

    return createdResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
