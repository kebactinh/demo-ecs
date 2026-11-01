
const http = require("http");

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain; charset=utf-8" });
  res.end("Hello Docker! Node.js is running. -v3");
});

server.listen(8080, "0.0.0.0", () => {
  console.log("Server is running on port 8080");
});
