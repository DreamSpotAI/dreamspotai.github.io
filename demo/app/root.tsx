import {
  isRouteErrorResponse,
  Links,
  Meta,
  Outlet,
  Scripts,
  ScrollRestoration,
  useLocation,
  NavLink
} from "react-router";

import type { Route } from "./+types/root";
import "./app.css";

export const links: Route.LinksFunction = () => [
  { rel: "preconnect", href: "https://fonts.googleapis.com" },
  {
    rel: "preconnect",
    href: "https://fonts.gstatic.com",
    crossOrigin: "anonymous",
  },
  {
    rel: "stylesheet",
    href: "https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap",
  },
  {
    rel: "icon",
    type: "image/svg",
    href: "/DWA.svg",
  },
];

export function Layout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <head>
        <meta charSet="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <Meta />
        <Links />
      </head>
      <body className="flex flex-col h-dvh px-5 py-2">
        <header className="flex flex-row p-2 align-middle">
          <div className="ml-auto">
            <img className="m-auto w-15" src="/DWA.svg" alt="DreamSpot icon" />
            <h1 className="text-3xl font-extrabold text-center">DREAMSPOT</h1>
          </div>
          <div className="ml-auto flex flex-col justify-between">
            <img className="m-auto w-15 aspect-square rounded-full" src="/user.jpeg" alt="User icon" />
            <p className="text-center">Laura</p>
          </div>
        </header>
        <div className="flex flex-row flex-1 gap-3 mb-2">
          <aside className="basis-3xs">
            <h2 className=" text-center font-bold tracking-[1] text-2xl mb-5">MENU</h2>
            <nav>
              <ul className="flex flex-col gap-5">
                <li className="w-full">
                  <NavLink className={({ isActive }) => (
                    isActive ? "w-full block px-5 py-3 bg-amber-500" : "w-full block px-5 py-3 bg-amber-200"
                  )} to="/" end>Home</NavLink>
                </li>
                <li className="w-full">
                  <NavLink className={({ isActive }) => (
                    isActive ? "w-full block px-5 py-3 bg-amber-500" : "w-full block px-5 py-3 bg-amber-200"
                  )} to="/documents">Documents</NavLink>
                </li>
              </ul>
            </nav>
          </aside>
          <main className="flex flex-1 bg-amber-500 items-center justify-center pt-16 pb-4">
            {children}
          </main>
        </div>
        <footer className="w-full">
          <p className="text-center text-xs">DreamSpot&copy; all rights reserved 2025-2026</p>
        </footer>
        <ScrollRestoration />
        <Scripts />
      </body>
    </html>
  );
}

export default function App() {
  return <Outlet />;
}

export function ErrorBoundary({ error }: Route.ErrorBoundaryProps) {
  let message = "Oops!";
  let details = "An unexpected error occurred.";
  let stack: string | undefined;

  if (isRouteErrorResponse(error)) {
    message = error.status === 404 ? "404" : "Error";
    details =
      error.status === 404
        ? "The requested page could not be found."
        : error.statusText || details;
  } else if (import.meta.env.DEV && error && error instanceof Error) {
    details = error.message;
    stack = error.stack;
  }

  return (
    <main className="pt-16 p-4 container mx-auto">
      <h1>{message}</h1>
      <p>{details}</p>
      {stack && (
        <pre className="w-full p-4 overflow-x-auto">
          <code>{stack}</code>
        </pre>
      )}
    </main>
  );
}
