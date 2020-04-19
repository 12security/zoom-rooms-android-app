.class Lus/zoom/zrc/view/SwitchCameraPopupWindow$3;
.super Ljava/lang/Object;
.source "SwitchCameraPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/SwitchCameraPopupWindow;->show(Ljava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

.field final synthetic val$cameraListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/SwitchCameraPopupWindow;Lus/zoom/zrc/view/FixedRowsRecyclerView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow$3;->this$0:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    iput-object p2, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow$3;->val$cameraListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 92
    iget-object v0, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow$3;->val$cameraListView:Lus/zoom/zrc/view/FixedRowsRecyclerView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/FixedRowsRecyclerView;->requestLayout()V

    return-void
.end method
