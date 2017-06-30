(function(win) {

	// создание и запись стилей
	function writeCSS(styleString) {
		var styleElement = document.createElement("style");
		styleElement.rel = 'stylesheet';
		document.getElementsByTagName("head")[0].appendChild(styleElement);
		try {
			styleElement.innerText = styleString;
			styleElement.innerHTML = styleString;
		} catch (e) {
			try {
				styleElement.styleSheet.cssText = styleString;
			} catch (e) {
				return;
			}
		}
	}

	// проверка на поддержку woff2
	function supportsWoff2() {
		if (!win.FontFace) {
			return false;
		}
		var woff2 = new FontFace('t', 'url(data:application/font-woff2;charset=utf-8;base64,d09GMgABAAAAAAPMAAsAAAAACbAAAAOBAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAABlYAhU4RCAooQgsIAAE2AiQDDAQgBYlfBykb+wjILgpsY9rIRchcpL+zqLG4GAoeCOXBvxxKS1CtkT13+88BREUkEwWIOopZJQqQXCRyeQL3YNCcftYasfGNOEnLagBkPwT/RVJmaopA6MkZASgX/1jgmfvWsYADwGXMg//19xpvNumUeUBplAn4nyj92cyjTe/6AVNxAxhMKKKxRh0w15rojR/gERzbLehZ+RZSQCN7MKmAXCGS2KOA9Dg9Jm8ojdFWt5wUhBTPxuEPIHNI679wQZWBCP9AHFwDQIYc9QUE6gtmdzAIBDXXdOG4cy675a4nXvvopwohDmNl7MseZe+zj63roxO9GMAIRCSxhJtqcMhxJ11wzR0PPfPWF79DGg+i66Ed3YArsVz1VJgpfdCfULWlilUmKztWtkeAL++/POXLvS/jCAaVRGJIrMWImBCTYmWsi21xBuIeAHEtbsSdeAD88WFWVBuGORRCFilGKSbO1JdIZSV1ilmNovI1r71euv/thbdAINj3eZ7ZoP/FZcXg5bBR08y5Z6RFvia9RrEMBOPrpgnkawQAIE+sgQSBPORywH5z574FoBciQMj0IoBMkT4EkKtlMAEkOFKgpy1Z6LS/1FAVAZFymXK3NShQtb1wIYqvsAjfuBjF/9gSLCoiIcXiSKZmLI/kWlaVCY4UmNYBWYiFSq3qvyzNl63Mt6wsR6GmKs/WQ21VM9sN9VTdncv6frlBHHhvbMhNwuFDbgbjq7GFbIVxe7/4iXvgtq+yOL+yOG5Z7qTKy9HSQzucjcvWY8uOXgHy4zN/Q6Y3VG0rl30bfMmTX1lnyqnkAeqCNCOKbAbLaiE+FYt+Z51e8xIrNK230/usiXWRPsKvr6asR2ciB6l0xSpP33hMy+gPkx1cho/ycIpyNcznYP6scD70UA7FaKgM7RzML+f384d+hdv5nfycccpSdAZKpYNLrY0p4/IyQMX5UiimbNwMkIkkUfyUeR4PHLCZLDlZer8uS5dRoNN4ZKtlyvPyQUIj6QT+flk2jgHJDJHoxCg1xdfwKfgqxE3lh7SajQk5pvkazNB5dBQ/7YjFlgUGjsmBorMFqowfyFkayON+xkyt+MwswiYGGYhyJKZABuen1uqhNm2LgMmmLqi4ViM6Yxvn3yxr0RkdY7QEUUusuS2TlDbTsDS42f6xPDyj20EVUBqGm5eRkcfkUG1A1XbzEAEAIJ9+FhkA) format("woff2")', {});
		woff2.load()['catch'](function(){});
		return woff2.status === 'loading' || woff2.status === 'loaded';
	}

	// загрузка шрифтов из внешних файлов
	function loadExternalFont(url, urlKey, cssKey) {
		var request = new XMLHttpRequest;
		request.open("GET", url);
		request.onload = function() {
			if (request.status >= 200 && request.status < 400) {
				var css = request.responseText;
				writeCSS(css);
				if (win.localSupport) {
					win.localWrite(urlKey, url);
					win.localWrite(cssKey, css);
				}
			} else {
				console.warn('request loadExternalFont - fail');
			}
		};
		request.send();
	}

	// загрузка шрифтов
	function loadFont(fontName, srcWoff, srcWoff2) {

		var prefix = fontName + "-x-font-",
			urlKey = prefix + "url",
			cssKey = prefix + "css",
			url = (srcWoff2 && supportsWoff2()) ? srcWoff2 : srcWoff;

		if (win.localSupport) {
			var localUrl = localStorage[urlKey];
			var localCss = localStorage[cssKey];
			if (localCss && (localUrl === url)) {
				writeCSS(localCss);
			} else {
				loadExternalFont(url, urlKey, cssKey);
			}
		} else {
			loadExternalFont(url, urlKey, cssKey);
		}
	}

	// инит загрузки шрифтов
	loadFont('Font-name', MEDIA_FONT_PATH + 'css/fonts/fonts-woff.css', MEDIA_FONT_PATH + 'css/fonts/fonts-woff2.css');

})(window);
