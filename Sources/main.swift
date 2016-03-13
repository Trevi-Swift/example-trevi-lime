import Trevi

let server = Http ()

server.createServer({ (req, res, next) in
    var data = ""
    func ondata(chunk: String){
        data += chunk
    }
    func onend(){
        res.write(data)
        res.end()
    }
    req.on("data", ondata)
    req.on("end", onend)
}).listen(8080)