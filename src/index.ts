import { Hono } from "hono";

const app = new Hono();

app.get("/", (c) => {
  return c.text("Hello Hono!");
});

app.get("/hello/:name", (c) => {
  const { name } = c.req.param();

  return c.text(`Hello ${name}!`);
});

export default app;
