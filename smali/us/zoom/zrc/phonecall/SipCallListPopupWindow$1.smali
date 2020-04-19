.class Lus/zoom/zrc/phonecall/SipCallListPopupWindow$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "SipCallListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phonecall/SipCallListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipCallListPopupWindow;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallListPopupWindow;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow$1;->this$0:Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 111
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow$1;->this$0:Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->onSipCallListChanged()V

    return-void
.end method
