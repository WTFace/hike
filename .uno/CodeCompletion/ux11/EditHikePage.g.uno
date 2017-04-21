[Uno.Compiler.UxGenerated]
public partial class EditHikePage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly EditHikePage __parent;
        [Uno.WeakReference] internal readonly EditHikePage __parentInstance;
        public Template(EditHikePage parent, EditHikePage parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        global::Uno.UX.Property<string> __self_Text_inst;
        internal global::Fuse.Reactive.EventBinding temp_eb0;
        global::Uno.UX.NameTable __g_nametable;
        static string[] __g_static_nametable = new string[] {
            "temp_eb0"
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
            var temp1 = new global::Fuse.Reactive.Data("chooseHike");
            var temp2 = new global::Fuse.Reactive.DataBinding(__self_Text_inst, temp, __g_nametable, Fuse.Reactive.BindingMode.Default);
            var temp_eb0 = new global::Fuse.Reactive.EventBinding(temp1, __g_nametable);
            global::Fuse.Gestures.Clicked.AddHandler(__self, temp_eb0.OnEvent);
            __g_nametable.Objects.Add(temp_eb0);
            __self.Bindings.Add(temp2);
            __self.Bindings.Add(temp_eb0);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "Text";
    }
    global::Uno.UX.Property<object> temp_Items_inst;
    global::Uno.UX.Property<string> temp1_Value_inst;
    global::Uno.UX.Property<string> temp2_Value_inst;
    global::Uno.UX.Property<string> temp3_Value_inst;
    global::Uno.UX.Property<string> temp4_Value_inst;
    global::Uno.UX.Property<string> temp5_Value_inst;
    internal global::Fuse.Reactive.EventBinding temp_eb1;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb1"
    };
    static EditHikePage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public EditHikePage(
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
        var temp6 = new global::Fuse.Reactive.Data("hikes");
        var temp1 = new global::Fuse.Controls.Text();
        temp1_Value_inst = new hike_FuseControlsTextControl_Value_Property(temp1, __selector1);
        var temp7 = new global::Fuse.Reactive.Data("name");
        var temp2 = new global::Fuse.Controls.TextBox();
        temp2_Value_inst = new hike_FuseControlsTextInputControl_Value_Property(temp2, __selector1);
        var temp8 = new global::Fuse.Reactive.Data("location");
        var temp3 = new global::Fuse.Controls.TextBox();
        temp3_Value_inst = new hike_FuseControlsTextInputControl_Value_Property(temp3, __selector1);
        var temp9 = new global::Fuse.Reactive.Data("distance");
        var temp4 = new global::Fuse.Controls.TextBox();
        temp4_Value_inst = new hike_FuseControlsTextInputControl_Value_Property(temp4, __selector1);
        var temp10 = new global::Fuse.Reactive.Data("rating");
        var temp5 = new global::Fuse.Controls.TextBox();
        temp5_Value_inst = new hike_FuseControlsTextInputControl_Value_Property(temp5, __selector1);
        var temp11 = new global::Fuse.Reactive.Data("comments");
        var temp12 = new global::Fuse.Reactive.Data("goBack");
        var temp13 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp14 = new global::Fuse.Controls.ScrollView();
        var temp15 = new global::Fuse.Controls.StackPanel();
        var temp16 = new Template(this, this);
        var temp17 = new global::Fuse.Reactive.DataBinding(temp_Items_inst, temp6, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp18 = new global::Fuse.Reactive.DataBinding(temp1_Value_inst, temp7, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp19 = new global::Fuse.Controls.Text();
        var temp20 = new global::Fuse.Reactive.DataBinding(temp2_Value_inst, temp8, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp21 = new global::Fuse.Controls.Text();
        var temp22 = new global::Fuse.Reactive.DataBinding(temp3_Value_inst, temp9, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp23 = new global::Fuse.Controls.Text();
        var temp24 = new global::Fuse.Reactive.DataBinding(temp4_Value_inst, temp10, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp25 = new global::Fuse.Controls.Text();
        var temp26 = new global::Fuse.Reactive.DataBinding(temp5_Value_inst, temp11, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp27 = new global::Fuse.Controls.Button();
        temp_eb1 = new global::Fuse.Reactive.EventBinding(temp12, __g_nametable);
        temp13.LineNumber = 4;
        temp13.FileName = "Pages/EditHikePage.ux";
        temp13.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../Pages/EditHikePage.js"));
        temp14.Children.Add(temp15);
        temp15.Children.Add(temp);
        temp15.Children.Add(temp1);
        temp15.Children.Add(temp19);
        temp15.Children.Add(temp2);
        temp15.Children.Add(temp21);
        temp15.Children.Add(temp3);
        temp15.Children.Add(temp23);
        temp15.Children.Add(temp4);
        temp15.Children.Add(temp25);
        temp15.Children.Add(temp5);
        temp15.Children.Add(temp27);
        temp.Templates.Add(temp16);
        temp.Bindings.Add(temp17);
        temp1.Bindings.Add(temp18);
        temp19.Value = "Location";
        temp2.Bindings.Add(temp20);
        temp21.Value = "Distance";
        temp3.Bindings.Add(temp22);
        temp23.Value = "Rating:";
        temp4.Bindings.Add(temp24);
        temp25.Value = "Comments:";
        temp5.TextWrapping = Fuse.Controls.TextWrapping.Wrap;
        temp5.Bindings.Add(temp26);
        temp27.Text = "Back";
        global::Fuse.Gestures.Clicked.AddHandler(temp27, temp_eb1.OnEvent);
        temp27.Bindings.Add(temp_eb1);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb1);
        this.Children.Add(temp13);
        this.Children.Add(temp14);
    }
    static global::Uno.UX.Selector __selector0 = "Items";
    static global::Uno.UX.Selector __selector1 = "Value";
}
