package ;

import haxe.ui.HaxeUIApp;
// Previously Main.hx?
class renamingdoesnothing {
    public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {
            app.addComponent(new MainView());

            app.start();
        });
    }
}
