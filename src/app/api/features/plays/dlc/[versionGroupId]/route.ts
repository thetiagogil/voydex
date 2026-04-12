import { getAvailableDlcs } from "@/features/play/server/play-dlc";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ versionGroupId: string }> },
) {
  try {
    const { versionGroupId: idStr } = await params;
    const versionGroupId = parseInt(idStr, 10);

    if (isNaN(versionGroupId))
      return NextResponse.json(
        { error: "Invalid version group id" },
        { status: 400 },
      );

    const { data, error } = await getAvailableDlcs(versionGroupId);

    if (error)
      return NextResponse.json(
        { error: "message" in error ? error.message : String(error) },
        { status: 500 },
      );

    return NextResponse.json(data);
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
