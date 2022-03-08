var express = require("express");
var router = express.Router();
var request = require("request");
var cheerio = require("cheerio");
var validUrl = require("valid-url");
const pa11y = require("pa11y");
var fs = require("fs");
var moment = require("moment");
var Crawler = require("simplecrawler");

/* GET Scan Result page. */
router.post("/", async function (req, res, next) {
	var message = "";
	const url = req.body.uname;
	const level = req.body.level;
	const version = req.body.version;
	const webCrawling = req.body.webCrawling;

	if (url === "") {
		message = "Please add an URL";
		res.render("scan.ejs", { message: message });
	} else {
		var urlID = url.split("/")[2];

		var folderName = urlID;
		getUrlData(url, folderName, version, level, webCrawling);

		message = "Url Scanned Successfully . please check Result !";
		res.render("scan.ejs", { message: message });
	}
});

const getUrlData = async (url, folderName, version, level, webCrawling) => {
	if (version == "WCAG 2.1") {
		var ignore = ["WCAG2AA.Principle3.Guideline3_1.3_1_1.H57.2"];
	} else {
		var ignore = "";
	}
	console.log(ignore);
	const pallyResults = await pa11y(url, {
		waitUntil: "load",
		timeout: 900000000,
		includeNotices: true,
		includeWarnings: true,
		standard: level,
		runners: ["axe", "htmlcs"],
		ignore: ignore,
	});

	var newStringName = pallyResults.documentTitle.replace(/[^A-Z0-9]/gi, "_");

	var name = newStringName + ".json";

	db.query(
		"SELECT scan_id  FROM scanreport ORDER BY scan_id DESC LIMIT 1",
		function (err, results) {
			if (results.length) {
				var scanId = results[0].scan_id + 1;
			} else {
				var scanId = 1;
			}
			var foldName = folderName + "-" + scanId;

			var dir = "public/json/" + foldName;
			if (!fs.existsSync(dir)) {
				fs.mkdirSync(dir);
			}
			var filename = "public/json/" + foldName + "/" + name;
			const content = JSON.stringify(pallyResults);
			fs.writeFileSync(filename, content);

			var resarry = [];
			resarry[0] = pallyResults;
			resarry[1] = scanId;
			resarry[7] = webCrawling;
			resarry[2] = foldName;
			resarry[3] = level;
			resarry[4] = version;

			var value = getReport(resarry);
		}
	);

	return true;
};

var getReport = function (req, res, next) {
	var scanlevel = "Level A";
	var result = "Pass";
	var rules_failed = 0;
	var frequency = "Ad-hoc";
	var scanId = req[1];

	var webname = req[0].documentTitle;
	var url = req[0].pageUrl;
	var level = req[3];
	var imgCount = 0;
	var vdCount = 0;
	var docCount = 0;
	var webCrawling = req[7];

	if (webCrawling == "Enabling") {
		var present_status = "Pending";
	} else {
		var present_status = "Completed";
	}
	var imgCrawler = new Crawler(url);
	imgCrawler.addFetchCondition(function (queueItem) {
		return queueItem.path.match(
			/\.(zip|jpg|jpeg|png|ico|gif|avif|jfif|pjpeg|pjp)$/i
		);
	});
	imgCrawler.on("fetchcomplete", function (queueItem, responseBuffer) {
		console.log(queueItem.url);
		var imgCount = queueItem.url;
		imgSql =
			"INSERT INTO `media`(`type`, `scan_id`, `url`) VALUES ('image','" +
			scanId +
			"','" +
			imgCount +
			"')";
		db.query(imgSql, function (err, result) {});
	});
	imgCrawler.start();

	var docCrawler = new Crawler(url);
	docCrawler.addFetchCondition(function (queueItem) {
		return queueItem.path.match(
			/\.(bmp|webp|ttf|woff|json|zip|rar|7z|exe|gzip|gz|pdf|docx)$/i
		);
	});
	docCrawler.on("fetchcomplete", function (queueItem, responseBuffer) {
		var docCount = queueItem.url;
		docSql =
			"INSERT INTO `media`(`type`, `scan_id`, `url`) VALUES ('docs','" +
			scanId +
			"','" +
			docCount +
			"')";
		db.query(docSql, function (err, result) {});
	});
	docCrawler.start();

	var vdCrawler = new Crawler(url);
	vdCrawler.addFetchCondition(function (queueItem) {
		return queueItem.path.match(
			/\.(ogg|webm|mp4|mp3|mpg|mp2|mpeg|mpe|mpv|m4p|m4v|avi|wmv|mov|qt|flv|swf)$/i
		);
	});
	vdCrawler.on("fetchcomplete", function (queueItem, responseBuffer) {
		var vdCount = queueItem.url;
		vdSql =
			"INSERT INTO `media`(`type`, `scan_id`, `url`) VALUES ('video','" +
			scanId +
			"','" +
			vdCount +
			"')";
		db.query(vdSql, function (err, result) {});
	});
	vdCrawler.start();

	var issues = req[0].issues;

	var numErrors = issues.reduce(function (n, person) {
		return n + (person.typeCode == 1);
	}, 0);
	var numWarning = issues.reduce(function (n, person) {
		return n + (person.typeCode == 2);
	}, 0);
	var numNotices = issues.reduce(function (n, person) {
		return n + (person.typeCode == 3);
	}, 0);
	var total = numErrors + numWarning + numNotices;

	var sql =
		"INSERT INTO `scanreport`(`websitename`, `url`, `scan_level`, `result`, `rules_failed`, `errors`, `warnings`, `notices`, `frequency`, `status`, `total`, `level`, `imgcount`, `vdcount`, `document`, `folder` , `version`) VALUES ('" +
		webname +
		"','" +
		url +
		"','" +
		scanlevel +
		"','" +
		result +
		"','" +
		rules_failed +
		"','" +
		numErrors +
		"','" +
		numWarning +
		"','" +
		numNotices +
		"','" +
		frequency +
		"','" +
		present_status +
		"','" +
		total +
		"','" +
		level +
		"','" +
		imgCount +
		"','" +
		vdCount +
		"','" +
		docCount +
		"','" +
		req[2] +
		"','" +
		req[4] +
		"')";
	//console.log(sql);
	db.query(sql, function (err, result) {});

	if (webCrawling == "Enabling") {
		//PROCESS OF CHILD URL DATA
		var exclude = [
			"gif",
			"jpg",
			"jpeg",
			"png",
			"ico",
			"bmp",
			"ogg",
			"webp",
			"mp4",
			"webm",
			"mp3",
			"ttf",
			"woff",
			"json",
			"rss",
			"atom",
			"gz",
			"zip",
			"rar",
			"7z",
			"css",
			"js",
			"gzip",
			"exe",
			"pdf",
			"xml",
		];
		var exts = exclude.join("|");
		var regex = new RegExp(".(" + exts + ")", "i");

		var childCrawler = new Crawler(url);
		// var pages = [];
		childCrawler.addFetchCondition(function (parsedURL) {
			return !parsedURL.path.match(regex); // This will reject anything that's not a link.
		});
		childCrawler.start();
		childCrawler.on(
			"fetchcomplete",
			function (item, responseBuffer, response) {
				childUrl = item.url;
				if (childUrl.indexOf(".pdf") != -1) {
					// It is a pdf
				} else {
					var sql =
						"INSERT INTO `webcrawling`( `scan_id`,  `weburl`,  `folder`) VALUES ('" +
						scanId +
						"','" +
						childUrl +
						"','" +
						req[2] +
						"')";
					db.query(sql, function (err, result) {});
				}
			}
		);
	}

	return true;
};

module.exports = router;
