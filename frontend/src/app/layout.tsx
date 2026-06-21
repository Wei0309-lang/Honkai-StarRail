import type { Metadata } from "next";
import Link from "next/link";
import "./globals.css";

export const metadata: Metadata = {
  title: "崩壞：星穹鐵道 Wiki",
  description: "Honkai: Star Rail character wiki",
};

export default function RootLayout({
  children,
}: Readonly<{ children: React.ReactNode }>) {
  return (
    <html lang="zh-TW">
      <body>
        <nav className="navbar">
          <Link href="/" className="nav-brand">崩壞：星穹鐵道 Wiki</Link>
          <div className="nav-links">
            <Link href="/characters">所有角色</Link>
            <Link href="/planets">星球地圖</Link>
          </div>
        </nav>
        <main>{children}</main>
      </body>
    </html>
  );
}
