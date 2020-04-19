.class Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam$1;
.super Ljava/lang/Object;
.source "ControlSystemDeviceList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->buildView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;


# direct methods
.method constructor <init>(Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam$1;->this$1:Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 215
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam$1;->this$1:Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;

    invoke-static {v0}, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->access$100(Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam$1;->this$1:Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;

    invoke-static {v1}, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->access$200(Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam$1;->this$1:Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;

    invoke-static {v2}, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->access$300(Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam$1;->this$1:Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;

    invoke-static {v3}, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->access$400(Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lus/zoom/zrc/model/Model;->requestControlZRCSDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
