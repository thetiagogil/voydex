import { getDecisionOptions } from "@/features/play/server/play-tracking";
import {
  errorResponse,
  jsonResponse,
  parseRequiredInt,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ trackingItemId: string }> },
) {
  try {
    const { trackingItemId: idStr } = await params;
    const trackingItemId = parseRequiredInt(idStr, "tracking item id");
    if (trackingItemId.error) return trackingItemId.error;

    const { data, error } = await getDecisionOptions(trackingItemId.data);

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
