import {
  badRequestResponse,
  errorResponse,
  jsonResponse,
  parseRequiredInt,
} from "@/lib/api/route";
import { getAvailableDlcs } from "@/features/play/server/play-dlc";
import { NextRequest } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ versionGroupId: string }> },
) {
  try {
    const { versionGroupId: idStr } = await params;
    if (!idStr) return badRequestResponse("Missing version group id");

    const versionGroupId = parseRequiredInt(idStr, "version group id");
    if (versionGroupId.error) return versionGroupId.error;

    const { data, error } = await getAvailableDlcs(versionGroupId.data);

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
