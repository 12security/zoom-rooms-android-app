.class Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$1;
.super Ljava/lang/Object;
.source "ZMViewPagerBottomSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$1;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 187
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$1;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;

    invoke-static {p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->access$000(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$1;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;

    invoke-virtual {p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$1;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;

    invoke-static {p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->access$100(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$1;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;

    invoke-virtual {p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->cancel()V

    :cond_0
    return-void
.end method
