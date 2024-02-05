import VercelUI

struct LandingPage: View {
    var body: some View {
        VStack {
            Text("Ejemplo de web con swift")
            Text("Bienvenido a la web")
        }
    }
}

@main
struct App: ExpressHandler {

    static func configure(router: Router) async throws {
        router.get("/") { _, _ in
            return LandingPage()
        }
    }
}
