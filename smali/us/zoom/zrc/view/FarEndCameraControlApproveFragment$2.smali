.class Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$2;
.super Ljava/lang/Object;
.source "FarEndCameraControlApproveFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lus/zoom/zrc/view/FarEndCameraControlApproveFragment$2;->this$0:Lus/zoom/zrc/view/FarEndCameraControlApproveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
