import Vapor

/// Controls basic CRUD operations on `Todo`s.
final class NewsController: RouteCollection {
    
    func createNews(_ req: Request) throws -> Future<News> {
        return try req.content.decode(News.self).flatMap {
            $0.save(on: req)
        }
    }
    
    func getAllNews(_ req: Request) throws -> Future<[News]> {
        return News.query(on: req).all()
    }
    
    func boot(router: Router) throws {
        let route = router.grouped("api", "news")
        route.get("getAlls", use: getAllNews)
        route.post("create", use: createNews)
    }
}
