#!/usr/bin/env python3
"""Tiny local server for the AgentHQ live dashboard. Serves the page and status.json
on 127.0.0.1:4765. Exits quietly if the port is already in use."""
import http.server, socketserver, os, json

HQ = os.path.join(os.path.expanduser("~"), ".claude", "agenthq")
PORT = 4765
PAGE = os.path.join(HQ, "dashboard.html")
STATUS = os.path.join(HQ, "status.json")
TEAMS = os.path.join(HQ, "agent_team.json")

class H(http.server.BaseHTTPRequestHandler):
    def log_message(self, *a): pass
    def _send(self, body, ctype="application/json"):
        self.send_response(200)
        self.send_header("Content-Type", ctype)
        self.send_header("Cache-Control", "no-store")
        self.end_headers()
        self.wfile.write(body if isinstance(body, bytes) else body.encode("utf-8"))
    def do_GET(self):
        if self.path.startswith("/status.json"):
            try: body = open(STATUS, "rb").read()
            except Exception: body = b'{"active":{},"recent":[],"updated":0}'
            self._send(body)
        elif self.path.startswith("/agent_team.json"):
            try: body = open(TEAMS, "rb").read()
            except Exception: body = b'{}'
            self._send(body)
        else:
            try: body = open(PAGE, "rb").read()
            except Exception: body = b"<h1>Dashboard file missing</h1>"
            self._send(body, "text/html; charset=utf-8")

try:
    socketserver.TCPServer.allow_reuse_address = True
    with socketserver.TCPServer(("127.0.0.1", PORT), H) as httpd:
        httpd.serve_forever()
except OSError:
    pass  # already running
