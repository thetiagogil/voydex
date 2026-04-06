import { getTypes } from "@/services/reference/types";
import { NextResponse } from "next/server";

export async function GET() {
  const { data, error } = await getTypes();

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json(data);
}
