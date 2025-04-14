import { createServer } from "node:http";

const server = createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end("Hello, world!\n");
});

server.listen(process.env["PORT"], () => {
  console.log(`Server running at http://localhost:${process.env["PORT"]}/`);
});