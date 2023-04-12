<!DOCTYPE html>
<html>
<head>
	<title>Traffic Light Demo</title>
	<style>
		button {
			width: 100px;
			height: 100px;
			border-radius: 50%;
			margin-right: 10px;
		}

		.red {
			background-color: red;
		}

		.green {
			background-color: green;
		}

		.yellow {
			background-color: yellow;
		}

		.black {
			background-color: black;
		}
	</style>
</head>
<body>
	<h1>Traffic Light Demo</h1>
	<div>
		<button id="red-button" class="red" onclick="redClicked()">Red</button>
		<button id="green-button" class="black" onclick="greenClicked()">Green</button>
		<button id="yellow-button" class="black" onclick="yellowClicked()">Yellow</button>
	</div>

	<script>
		var currentState = 'red';

		function redClicked() {
			if (currentState == 'yellow') {
				goGreen();
			} else {
				goRed();
			}
		}

		function greenClicked() {
			if (currentState == 'red') {
				goGreen();
			} else {
				goYellow();
			}
		}

		function yellowClicked() {
			if (currentState == 'green') {
				goYellow();
			}
		}

		function goRed() {
			document.getElementById('red-button').className = 'red';
			document.getElementById('green-button').className = 'black';
			document.getElementById('yellow-button').className = 'black';
			currentState = 'red';
		}

		function goGreen() {
			document.getElementById('red-button').className = 'black';
			document.getElementById('green-button').className = 'green';
			document.getElementById('yellow-button').className = 'black';
			currentState = 'green';
		}

		function goYellow() {
			document.getElementById('red-button').className = 'black';
			document.getElementById('green-button').className = 'black';
			document.getElementById('yellow-button').className = 'yellow';
			currentState = 'yellow';
		}

		setInterval(function() {
			if (currentState == 'green') {
				goYellow();
			} else if (currentState == 'yellow') {
				goRed();
			} else if (currentState == 'red') {
				goGreen();
			}
		}, 20000);
	</script>
</body>
</html>
