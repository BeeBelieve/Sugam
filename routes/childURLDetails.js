const { Console } = require("console");
var express = require("express");
var router = express.Router();
var fs = require("fs");
const md5 = require("md5");

router.get("/", function (req, res, next) {
	var message = "";
	var scan_id = req.query.scan_id;
	var web_id = req.query.web_id;

	var sql =
		"SELECT * FROM `scanreport` INNER JOIN `webcrawling` ON scanreport.scan_id = webcrawling.scan_id  AND scanreport.scan_id = '" +
		scan_id +
		"'";
	db.query(sql, function (err, results) {
		if (results.length) {
			try {
				var data_array = {};
				for (var j = 0; j < results.length; j++) {
					if (results[j]["web_id"] == web_id) {
						var intI = j;

						fs = require("fs");
						var getName = results[intI]["webname"];

						if (getName == "") {
							getName = "< Missing title >" + results[k].pageUrl;
						}

						var newStringName = getName.replace(/[^A-Z0-9]/gi, "_");

						var filename = md5(newStringName) + ".json";
						//var folderName = results[0]["url"].split("/")[2];
						var folderName = results[intI]["folder"];
						var filepath =
							//  __dirname +
							"public/json/" + folderName + "/" + filename;
						let rawdata = fs.readFileSync(filepath);
						let errors = JSON.parse(rawdata);
						data_array[0] = results;
						data_array[1] = errors.issues;
						res.render("resultDetails.ejs", { data: data_array });
					}
				}
			} catch (error) {
				console.log("Something went wrong.");
				res.redirect("resultDetails?scan_id=" + scan_id);
			}
		} else {
			message = "No Record Founds.";
			res.render("resultDetails.ejs", { message: message });
		}
	});
});

module.exports = router;
