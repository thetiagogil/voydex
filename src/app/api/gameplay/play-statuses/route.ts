import { getPlayStatuses } from "@/services/gameplay/play";
import { NextResponse } from "next/server";

export async function GET() {
  const { data, error } = await getPlayStatuses();

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json(data);
}
