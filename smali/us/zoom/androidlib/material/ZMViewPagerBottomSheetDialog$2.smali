.class Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$2;
.super Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;
.source "ZMViewPagerBottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;
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

    .line 224
    iput-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;

    invoke-direct {p0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 229
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog$2;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;

    invoke-virtual {p1}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetDialog;->dismiss()V

    :cond_0
    return-void
.end method
