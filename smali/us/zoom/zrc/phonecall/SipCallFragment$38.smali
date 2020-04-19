.class Lus/zoom/zrc/phonecall/SipCallFragment$38;
.super Ljava/lang/Object;
.source "SipCallFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipCallFragment;->showSipCallListPopupWindow(Landroid/view/View;Lus/zoom/zrc/phonecall/SipCallListPopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipCallFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 1011
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$38;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1014
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$38;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$3602(Lus/zoom/zrc/phonecall/SipCallFragment;Lus/zoom/zrc/phonecall/SipCallListPopupWindow;)Lus/zoom/zrc/phonecall/SipCallListPopupWindow;

    return-void
.end method
