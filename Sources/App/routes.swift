import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
   let newsController = NewsController()
    try newsController.boot(router: router)
}
