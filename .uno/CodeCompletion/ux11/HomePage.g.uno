[Uno.Compiler.UxGenerated]
public partial class HomePage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly HomePage __parent;
        [Uno.WeakReference] internal readonly HomePage __parentInstance;
        public Template(HomePage parent, HomePage parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        global::Uno.UX.Property<string> __self_Text_inst;
        internal global::Fuse.Reactive.EventBinding temp_eb2;
        global::Uno.UX.NameTable __g_nametable;
        static string[] __g_static_nametable = new string[] {
            "temp_eb2"
        };
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::Fuse.Controls.Button();
            __self_Text_inst = new hike_FuseControlsButtonBase_Text_Property(__self, __selector0);
            var temp = new global::Fuse.Reactive.Data("name");
            __g_nametable = new global::Uno.UX.NameTable(__parent.__g_nametable, __g_static_nametable);
            var temp1 = new global::Fuse.Reactive.Data("goToHike");
            var temp2 = new global::Fuse.Reactive.DataBinding(__self_Text_inst, temp, __g_nametable, Fuse.Reactive.BindingMode.Default);
            var temp_eb2 = new global::Fuse.Reactive.EventBinding(temp1, __g_nametable);
            global::Fuse.Gestures.Clicked.AddHandler(__self, temp_eb2.OnEvent);
            __g_nametable.Objects.Add(temp_eb2);
            __self.Bindings.Add(temp2);
            __self.Bindings.Add(temp_eb2);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "Text";
    }
    global::Uno.UX.Property<object> temp_Items_inst;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router"
    };
    static HomePage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public HomePage(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.Each();
        temp_Items_inst = new hike_FuseReactiveEach_Items_Property(temp, __selector0);
        var temp1 = new global::Fuse.Reactive.Data("hikes");
        var temp2 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp3 = new global::Fuse.Controls.ScrollView();
        var temp4 = new global::Fuse.Controls.StackPanel();
        var temp5 = new Template(this, this);
        var temp6 = new global::Fuse.Reactive.DataBinding(temp_Items_inst, temp1, __g_nametable, Fuse.Reactive.BindingMode.Default);
        temp2.LineNumber = 4;
        temp2.FileName = "Pages/HomePage.ux";
        temp2.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../Pages/HomePage.js"));
        temp3.Children.Add(temp4);
        temp4.Children.Add(temp);
        temp.Templates.Add(temp5);
        temp.Bindings.Add(temp6);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        this.Children.Add(temp2);
        this.Children.Add(temp3);
    }
    static global::Uno.UX.Selector __selector0 = "Items";
}
