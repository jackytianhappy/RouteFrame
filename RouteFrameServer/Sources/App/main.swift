import Vapor

let drop = Droplet()

drop.get { req in
    let lang = req.headers["Accept-Language"]?.string ?? "en"
    return try drop.view.make("welcome", [
    	"message": Node.string(drop.localization[lang, "welcome", "title"])
    ])
}

drop.get("home") { req in
    return try JSON(node:
        ["data":  try JSON(node: [
        try JSON(node: ["id":"1","name":"Jacky","desc":"第一个测试数据"]),
        try JSON(node: ["id":"2","name":"Tian","desc":"第二个测试数据"]),
        try JSON(node: ["id":"3","name":"Nan","desc":"第三个测试数据"]),
        try JSON(node: ["id":"4","name":"Gong","desc":"第四个测试数据"]),
            ])
        ])

}


drop.resource("posts", PostController())

drop.run()
