.class Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener$1;
.super Ljava/lang/Object;
.source "ZMViewPagerBottomSheetListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener$1;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 22
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener$1;->this$0:Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;

    invoke-static {v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;->access$000(Lus/zoom/androidlib/material/ZMViewPagerBottomSheetListener;)Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/androidlib/material/ZMViewPagerBottomSheetBehavior;->invalidateScrollingChild()V

    return-void
.end method
