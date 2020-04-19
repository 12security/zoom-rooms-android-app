.class Lus/zoom/zrp/ZRPReserveFragment$9;
.super Ljava/lang/Object;
.source "ZRPReserveFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPReserveFragment;->initEditTextViewsEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPReserveFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$9;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 656
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$9;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$1200(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrp/ZRPReserveFragment$9;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p2}, Lus/zoom/zrp/ZRPReserveFragment;->access$900(Lus/zoom/zrp/ZRPReserveFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
