.class Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$4;
.super Ljava/lang/Object;
.source "WhiteboardCameraPairDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->onHandleReasonCodeAlreadyPairedByOther(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment$4;->this$0:Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "WhiteboardCameraPairDialogFragment"

    const-string p2, "user clicked cancel pair seize button"

    const/4 v0, 0x0

    .line 325
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
