import { markDexEntrySeen } from "@/services/gameplay/play-dex";
import { NextRequest, NextResponse } from "next/server";

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { dexEntryId } = await request.json();

    if (!dexEntryId) {
      return NextResponse.json(
        { error: "dexEntryId is required" },
        { status: 400 },
      );
    }

    const result = await markDexEntrySeen(playId, dexEntryId);
    return NextResponse.json(result);
  } catch (error: unknown) {
    return NextResponse.json(
      {
        error:
          error instanceof Error
            ? error.message
            : "Failed to mark dex entry as seen",
      },
      { status: 500 },
    );
  }
}
