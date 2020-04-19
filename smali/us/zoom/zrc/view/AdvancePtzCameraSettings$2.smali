.class Lus/zoom/zrc/view/AdvancePtzCameraSettings$2;
.super Ljava/lang/Object;
.source "AdvancePtzCameraSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/AdvancePtzCameraSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/AdvancePtzCameraSettings;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/AdvancePtzCameraSettings;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings$2;->this$0:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, ""

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceInfo.getPtzComId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings$2;->this$0:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    invoke-static {v2}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->access$100(Lus/zoom/zrc/view/AdvancePtzCameraSettings;)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getPtzComId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings$2;->this$0:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    invoke-static {v0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->access$100(Lus/zoom/zrc/view/AdvancePtzCameraSettings;)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getPtzComId()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings$2;->this$0:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    invoke-static {v0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->access$200(Lus/zoom/zrc/view/AdvancePtzCameraSettings;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 80
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings$2;->this$0:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    invoke-static {v0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->access$300(Lus/zoom/zrc/view/AdvancePtzCameraSettings;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings$2;->this$0:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    invoke-static {v0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->access$200(Lus/zoom/zrc/view/AdvancePtzCameraSettings;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 83
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings$2;->this$0:Lus/zoom/zrc/view/AdvancePtzCameraSettings;

    invoke-static {v0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->access$300(Lus/zoom/zrc/view/AdvancePtzCameraSettings;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
