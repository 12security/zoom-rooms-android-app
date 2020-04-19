.class Lus/zoom/zrc/phonecall/SipCallListPopupWindow$2;
.super Ljava/lang/Object;
.source "SipCallListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->buildView()Lus/zoom/zrc/phonecall/SipCallListPopupWindow;
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

    .line 141
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow$2;->this$0:Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 144
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow$2;->this$0:Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->access$000(Lus/zoom/zrc/phonecall/SipCallListPopupWindow;)Landroidx/databinding/Observable$OnPropertyChangedCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/SipCallInfoList;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 149
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSipCallInfoList()Lus/zoom/zrc/model/SipCallInfoList;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallListPopupWindow$2;->this$0:Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallListPopupWindow;->access$000(Lus/zoom/zrc/phonecall/SipCallListPopupWindow;)Landroidx/databinding/Observable$OnPropertyChangedCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/SipCallInfoList;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method
