.class Lus/zoom/zrc/view/ZRCShareContentDialogFragment$8;
.super Ljava/lang/Object;
.source "ZRCShareContentDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->setupShareCameraListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V
    .locals 0

    .line 1021
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$8;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1025
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$8;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-static {p2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->access$1100(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1027
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt p3, p2, :cond_0

    return-void

    .line 1030
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 1031
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getCameraSharingStatus()Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;

    move-result-object p2

    if-eqz p1, :cond_3

    .line 1033
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 1037
    :cond_1
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->isSharing()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCCameraSharingStatus;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 1041
    :cond_2
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$8;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->access$1202(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;Z)Z

    .line 1042
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$8;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-static {p2, p3}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->access$1300(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;Z)V

    .line 1043
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p2

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p2, p5, p4}, Lus/zoom/zrcsdk/ConfApp;->shareCamera(ZLjava/lang/String;)I

    const-string p2, "select camera:%s to share."

    .line 1044
    new-array p4, p5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, p3

    invoke-static {p2, p4}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method
