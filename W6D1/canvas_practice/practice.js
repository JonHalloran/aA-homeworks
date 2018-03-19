document.addEventListener("DOMContentLoaded", function() {
  const canvas = document.getElementById("mycanvas");
  canvas.width = 400;
  canvas.height = 600;

  const ctx = canvas.getContext("2d");
  ctx.fillStyle = "green";
  ctx.fillRect(0, 0, 400, 600);

  ctx.beginPath();
  ctx.arc(200, 150, 100, 0, 2 * Math.PI);
  ctx.strokeStyle = "black";
  ctx.lineWidth = 40;
  ctx.stroke();
  ctx.fillStyle = "white";
  ctx.fill();

  ctx.beginPath();
  ctx.arc(200, 150, 20, 0, 2 * Math.PI, true);
  ctx.strokeStyle = "black";
  ctx.lineWidth = 5;
  ctx.stroke();
  ctx.fillStyle = "black";
  ctx.fill();

  ctx.beginPath();
  ctx.lineWidth = 20;
  ctx.moveTo(200, 250);
  ctx.lineTo(200, 400);
  ctx.stroke();

  ctx.beginPath();
  ctx.arc(125, 400, 75, 0, 0.9 * Math.PI);
  ctx.stroke();

  ctx.beginPath();
  ctx.arc(53.5, 422, 5, 0, 2 * Math.PI);
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.fillStyle = "black";
  ctx.fill();

  ctx.beginPath();
  ctx.moveTo(275, 75);
  ctx.lineTo(300, 50);
  ctx.lineWidth = 20;
  ctx.stroke();

  ctx.beginPath();
  ctx.arc(300, 50, 5, 0, 2 * Math.PI);
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.fillStyle = "black";
  ctx.fill();
});
