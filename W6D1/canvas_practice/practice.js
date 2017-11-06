document.addEventListener("DOMContentLoaded", function(){
	const canvasEl = document.getElementById("mycanvas");
	canvasEl.height = 500;
	canvasEl.width = 500;
	const context = canvasEl.getContext('2d');
	context.fillStyle = 'red';
	context.fillRect(0,0,500,500);
	context.beginPath();
	context.arc(100, 100, 20, 0, 2*Math.PI, true);
	context.strokeStyle = "green";
	context.lineWidth = 5;
	context.stroke();
	context.fillStyle = "blue";
	context.fill();
});
